# Asset Data

Asset data can be posted via the `asset_level_data` endpoint. The data consist of building characteristics and annual data. Building characteristics are constant over time, whereas annual data changes annualy. Some data is only valid for the most current of the two reporting years, other data is valid for both years.


* Buidling characteristics:
  - gresb asset identifier
  - location specifics (e.g.  city, address, latitude)
  - construction year

* Annual data - most current year:
  - gross asset value
  - operational control
  - floor areas and total area size
  - data coverage change (energy, water)
  - data coverage (performance indicators)
  - maximum coverage (performance indicators)

* Annual data - both years:
  - annual vacancy
  - ownership period
  - new construction and major renovation
  - energy consumption
  - ghg emissions
  - water consumption
  - waste weight

You may submit data for any number of buildings for your user in one or more of these areas. The respondent may also provide data on other assets or for the same assets but in different areas. The data you access through the API is not specific to your application and does include data on the respondent's other assets or areas. In other words, you can access assets from a common pool - as long as the assets are part of the entity. It is the responsibility of the respondent to make sure that data submitted from multiple API partners does not conflict. This API is designed to meet the needs of applications that upload data to GRESB in real-time or as a batch and treats the entire dataset as a single resource.

## Create/Update Asset Data Set

```json
{
  "buildings": [
    {
      "partners_id": "213412434",
      "asset_name": "The White House",
      "asset_address": "1600 Pennsylvania Avenue NW, Washington DC",
      "asset_country": "US",
      "asset_size": 1,
      "property_type": "OFF",
      "major_renovation": "N",
      "survey_data": {
        "2017": {
          "asset_own": 6,
          "en_man_bcf_abs": 50000
        },
        "2018": {
          "asset_const_year": 1792,
          "asset_gav": 999,
          "asset_ind": "N",
          "asset_size_commom": 0,
          "asset_size_shared": 0,
          "asset_size_tenant_tenant": 0,
          "asset_size_tenant_landlord": 0,
          "asset_size_whole": 1,
          "dc_change": "N",
          "asset_own": 12,
          "en_man_bcf_abs": 100000,
          "en_man_bcf_cov": 1200,
          "en_man_bcf_tot": 1200
        }
      }
    }
  ]
}
```

Create or update asset level data by posting the data to:

`POST /api/entities/:entity_id/asset_level_data`

The `entity_id` must first be obtained from the list of <a href='#reporting-entities'>reporting entities</a>.

The document must contain an array of objects under the "buildings" key. Each item must be an object with the following keys:

 * `partners_id` - **Required.** A unique string to identify the asset in your system. This must be unique within the data set and should not change if the asset is renamed in your system. We will use this id to uniquely identify the asset within the dataset.
 * `asset_name` - A descriptive name to identify the asset to the end user.
 * `asset_address` - A street address for the asset at the time of submission.
 * `asset_country` - An ISO 3166-1 country code for the asset at the time of submission.
 * `asset_size` - Gross floor area of the asset in square feet or meters. The reporting metric is converted based on RC3 in the Real Estate Assessment.
 * `property_type` - A GRESB Asset Property Type code — see https://api-sandbox.gresb.com/about/lists for valid values.
 * `major_renovation` - Has the building been involved in a major renovation in the last 2 years.
 * `survey_data`  - An object containing keys for up to two years preceeding the `survey_date` of the associated response. For example, a 2018 response would have keys for `2016` and `2017`. Within each year are keys for the metrics your application maintains.

 **Note:** All metrics, except `partners_id`, are optional. You should only include the keys corresponding to the data your application can provide. See the <a href='#data-dictionary-2018'>data dictionary</a> for a complete listing of possible keys.

 In our example, we submit some basic energy data for 6 months of 2016 and all of 2017 for "Fuel consumption from all common areas of the base building". In 2016, we report 50 000 kWh of fuel consumption. In 2017 we report the size of the common area to 1200 m² and indcate 100% coverage which results in a masssive increase in consumption of 50 000 kWh.


## Asset-level Data Validation Errors

```json
{
  "buildings": [
    {
      "created_at": "2019-01-29T03:38:38Z",
      "updated_at": "2019-01-29T03:38:38Z",
      "asset_name": "Building 1",
      "asset_country": "US",
      "asset_address": "1 Some Street, Sometown VT",
      "asset_size": -1,
      "partners_id": "10001",
      "survey_data": {
        "1990": {
          "asset_own": 12
        },
        "2017": {
          "asset_own": 13,
          "en_man_bcf_abs": -1,
          "errors": {
            "en_man_bcf_abs": [
              "not_negative"
            ],
            "asset_own": [
              "months_in_year"
            ]
          }
        },
        "2018": {
          "asset_own": -1,
          "was_wd_perc": 110,
          "was_i_perc": -1,
          "was_l_perc": 0,
          "errors": {
            "asset_own": [
              "not_negative"
            ],
            "was_i_perc": [
              "not_negative",
              "waste_lte_100"
            ],
            "was_wd_perc": [
              "percentage_lte_100",
              "waste_lte_100"
            ],
            "was_oth_perc": [
              "waste_lte_100"
            ],
            "was_l_perc": [
              "waste_lte_100"
            ],
            "waste": [
              "waste_lte_100"
            ]
          }
        }
      },
      "errors": {
        "survey_data": [
          "inclusion"
        ],
        "asset_size": [
          "greater_than_zero",
          "shared_size_lt_total",
          "reporting_size_lt_total"
        ]
      }
    }
  ]
}
```

All of the available metrics are validated for data-type and range. When an invalid value is submitted it will be stored if possible, but we simultaneously return an error for that value. Invalid data will also be visible to the respondent within our application and will be ignored in calculations and in the final submission. To correct a value see the next section on 'Updating a Building'.

Errors can occur at the "building" level or within a given year of `survey_data`.

As an extreme example, here is a submission with several validation errors. Look for "errors" keys near the bottom.

Problems with this record (part of a 2019 response) include:

* a negative `asset_size`
* an attempt to include `1990` survey data in a 2019 response.
* within it's `2017` `survey_data`
  * a negative `en_man_bcf_abs`
  * an impossible 13 months of ownership in `asset_own`
* within it's `2018` `survey_data`
  * a negative `asset_own`
  * a negative `was_i_perc`
  * a `was_wd_perc` greater then 100%
  * total waste (`was_wd_perc`+`was_i_perc`+`was_l_perc`) greater then 100%

Notice that `was_l_perc` has an error set even though it's own value is in range. This is because it contributes to a total with an error.

## Updating a Building

```json
{
  "buildings": [
    {
      "partners_id": "213412434",
      "asset_name": "The White House",
      "asset_address": "1600 Pennsylvania Avenue NW, Washington DC",
      "survey_data": {
        "2017": {
          "asset_own": 6,
          "en_man_bcf_abs": 50000,
          "en_man_bcf_cov": 1000,
          "en_man_bcf_tot": 1000
        },
        "2018": {
          "asset_own": 12,
          "en_man_bcf_abs": 100000,
          "en_man_bcf_cov": 1200,
          "en_man_bcf_tot": ""
        }
      }
    }
  ]
}
```

`POST /api/entities/:entity_id/asset_level_data`

Update one or more existing buildings by posting a request including matching `partners_id`s for each existing building. Buildings not mentioned by `partners_id` will not be changed. An existing value can be cleared by setting its value to `null` or an empty string `""`. Existing values that are not mentioned will not be changed.


## Adding a Building

```json
{
  "buildings": [
    {
      "partners_id": "a new id",
      "asset_name": "Second Building",
      "asset_address": "123 Some Street, Washington DC"
    }
  ]
}
```

`POST /api/entities/:entity_id/asset_level_data`

Add a new building by posting a request including the new building's data with a new `partners_id`. Buildings not mentioned by `partners_id` will not be changed.


## Deleting a Building's Data

```json
{
  "buildings": [
    {
      "partners_id": "a new id",
      "_destroy": true
    }
  ]
}
```

`POST /api/entities/:entity_id/asset_level_data`

Delete an existing building by posting a request including the buildings `partners_id` and the key `_destroy` with a `true` value.


## Show Asset-Level Data

View asset-level data already submitted by your application with a get request to:

`GET /api/entities/:entity_id/asset_level_data`

By default, this returns asset-level data submitted by *your application only*. In order to get any participant-submitted data, you need to add the parameter `provider_id=0`:

`GET /api/entities/:entity_id/asset_level_data?provider_id=0`


## Delete all Asset-Level Data

To delete all asset-level data associated with your application, submit a `DELETE` request.

`DELETE /api/entities/:entity_id/asset_level_data`

If your HTTP client does not provide a way to send an HTTP `DELETE` request you can send a `POST` request with the parameter `_method=DELETE`.

`POST /api/entities/:entity_id/asset_level_data?_method=DELETE`

