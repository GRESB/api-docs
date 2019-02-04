# Asset Data

Asset data can be posted via the `asset_level_data` endpoint. The data consist of building characteristics and annual data. Building characteristics are constant over time, whereas annual data changes annualy. Some data is only valid for the most current of the two reporting years, other data is valid for both years.


**Building characteristics:**

  - gresb asset identifier
  - location specifics (e.g.  city, address, latitude)
  - construction year

**Annual data - most current year:**

  - gross asset value
  - operational control
  - floor areas and total area size
  - completed new construction and major renovation
  - data coverage change (energy, water)
  - data coverage (performance indicators)
  - maximum coverage (performance indicators)

**Annual data - both years:**

  - annual vacancy
  - ownership period
  - new construction and major renovation
  - energy consumption
  - ghg emissions
  - water consumption
  - waste weight

You may submit data for any number of buildings for your user, in one or more of the aforementioned sections. The respondent may also provide data on other assets or for the same assets but in different sections. The data you access through the API is not specific to your application and include data on the respondent's other assets or sections. In other words, you can access assets from a common pool - as long as the assets are part of the entity. It is the responsibility of the respondent to make sure that data submitted from multiple API partners does not conflict with eachother. This API is designed to meet the needs of applications that upload data to GRESB in real-time or as a batch and treats the entire dataset as a single resource.

## Create/Update Asset Data Set

```json
{
  "buildings": [
    {
      "gresb_asset_id": 213412434,
      "partners_id": "abc123",
      "asset_address": "1600 Pennsylvania Avenue NW",
      "asset_city": "Washington DC",
      "asset_state_province": "District of Columbia",
      "asset_country": "US",
      "asset_const_year": 1800,
      "annual_data": [
        {
          "year": 2017,
          "asset_own": 6,
          "asset_vacancy": 7,
          "new_construction": false,
          "major_renovation": false,
          "en_man_bcf_abs": 50000
        },
        { 
          "year": 2018,
          "asset_name": "The White House",
          "asset_size": 10000,
          "property_type_code": "OFF",
          "asset_const_year": 1792,
          "asset_gav": 400,
          "directly_managed": false,
          "whole_building": true,
          "dc_change_energy": false,
          "dc_change_water": false,
          "asset_vacancy": 3,
          "asset_own": 12,
          "new_construction": false,
          "major_renovation": true,
          "major_renovation_completed": true,
          "en_man_bcf_abs": 101250,
          "en_man_bcf_cov": 1200,
          "en_man_bcf_tot": 1200
        }
      ]
    }
  ]
}
```

Create or update asset level data by posting the data to:

`POST /api/entities/:entity_id/asset_level_data`

The `entity_id` must first be obtained from the list of <a href='#reporting-entities'>reporting entities</a>.

The document must contain an array of objects under the "buildings" key. Each item must be an object with the following keys:

 * `gresb_asset_id` - Unique GRESB Asset ID - Identify and update information for existing assets. Generated automatically. Please do not enter your own IDs. **NOTE:** In order to see GRESB Asset IDs for existing assets GET [asset-level-data](#asset-data-show-asset-level-data). Uploading assets without an ID will create a new asset. Assets with an existing ID will be updated. Assets with a duplicated, non-existing, or ID belonging to another portfolio will be rejected.
 * `partners_id` - Optional field to identify newly created assets. Can be used internally to retrieve the GRESB asset ID.
 * `asset_address` - Physical street or postal address.
 * `asset_city` - **Required**. City, town, or village.
 * `asset_state_province` - **Required**. State, province, or region.
 * `asset_country` - **Required**. ISO3166 country code.
 * `asset_const_year` - Year of construction.
 * `annual_data`  - An array of objects, each representing the data of two years preceeding the survey date. For example, a 2019 response would have keys for `2017` and `2018`.

 **Note:** You should only include the keys corresponding to the data your application can provide. See the <a href='#data-dictionary'>data dictionary</a> for a complete listing of possible fields per key.

 In our example, we submit some basic energy data for 6 months of 2017 and all of 2018 for "Fuel consumption from all common areas of the base building". In 2017, we report 50 000 kWh of fuel consumption. In 2018 we report the size of the common area to 1200 sq.ft. and indcate 100% coverage which results in a masssive increase in consumption of 51 250 kWh.


## Validation Errors

```json
{

NEEDS UPDATED EXAMPLE WITH NEW VALIDATION RULE ERRORS

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

All of the available metrics are validated for data-type and integrity. When an invalid value is submitted it will be stored if possible, but we simultaneously return an error for that value. Invalid data will also be visible to the respondent within our application and will be ignored in calculations and in the final submission. To correct a value see the next section on 'Updating a Building'. An overview of all errors can be found in [errors & warnings](#errors-amp-warnings).

Errors can occur at the `buildings` level or within a given year of `annual_data`.

As an extreme example, here is a submission with several validation errors. Look for "errors" keys near the bottom.

_NEEDS UPDATED EXAMPLE WITH NEW VALDATION RULE ERRORS_

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
      "gresb_asset_id": 213412434,
      "survey_data": {
        "2017": {
          "asset_vacancy": null,
          "en_man_bcf_abs": ""
        },
        "2018": {
          "asset_vacancy": 22,
          "en_man_bcf_cov": 1000,
          "en_man_bcf_tot": 2000
        }
      }
    }
  ]
}
```

`POST /api/entities/:entity_id/asset_level_data`

Update one or more existing buildings by posting a request including matching `gresb_asset_id`s for each existing building. Buildings not mentioned by `gresb_asset_id` will not be changed. An existing value can be cleared by setting its value to `null` or an empty string `""`. Existing values that are not mentioned will not be changed.

In this example we clear `asset_vacancy` and `en_man_bcf_abs` for 2017. `asset_vacancy`, `en_man_bcf_cov`, and `en_man_bcf_tot` are changed to different values for 2018.


## Adding a Building

```json
{
  "buildings": [
    {
      "partners_id": "def456",
      "city": "Amsterdam",
      "state_province": "Noord-Holland",
      "country": "NL",
      "annual_data": [
        {
          "year": 2017,
          "asset_own": 12,
          "new_construction": false,
          "major_renovation": true
        },
        { 
          "year": 2018,
          "asset_name": "my second asset",
          "property_type_code": "RHS",
          "directly_managed": false,
          "asset_size": 2500,
          "whole_building": true,
          "asset_own": 12,
          "new_construction":false,
          "major_renovation": false,
          "dc_change_energy": true,
          "dc_change_water": false
        }
      ]
    }
  ]
}
```

`POST /api/entities/:entity_id/asset_level_data`

Add a new building by posting a request including the new building's data. All keys shown in the example, except for the `parners_id`, are necessary in order to create a new asset. Note that although the `partners_id` is optional, the `partners_id` is useful for mapping your asset and retrieve the newly created `gresb_asset_id`. So make sure your `partners_id`s are unique.

Buildings not mentioned by `gresb_asset_id` will not be changed.


## Deleting a Building's Data

```json
{
  "buildings": [
    {
      "gresb_asset_id": 213412434,
      "_destroy": true
    }
  ]
}
```

`POST /api/entities/:entity_id/asset_level_data`

Delete an existing building by posting a request including the buildings `gresb_asset_id` and the key `_destroy` with a `true` value.


## Show Asset-Level Data

View asset-level data already present for the entity with a `GET` request to:

`GET /api/entities/:entity_id/asset_level_data`


## Delete all Asset-Level Data

To delete all asset-level data associated with your application, submit a `DELETE` request.

`DELETE /api/entities/:entity_id/asset_level_data`

If your HTTP client does not provide a way to send an HTTP `DELETE` request you can send a `POST` request with the parameter `_method=DELETE`.

`POST /api/entities/:entity_id/asset_level_data?_method=DELETE`

