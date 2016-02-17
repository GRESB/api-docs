# Asset-Level Data

The GRESB survey allows certain data to be provided at the asset level.

These data include:

* Basic identifying information for the asset:
  * your unique id
  * a descriptive name
  * street address
  * gross floor area.

* Annuallized Performance Indicator data in the following areas:
  * Energy Consumption
  * Water Consumption
  * Waste
  * GHG Emissions

You may submit data for any number of buildings for your user in one or more of these areas.

The respondent may also provide data on other assets or for the same assets but in different areas. The data you access through the API is specific to your application and does not include data on the respondent's other assets or areas. It is the responsibility of the respondent to make sure that data submitted from multiple API partners does not conflict.

The data you submit will not be modified within our application. To make changes, respondents will be instructed to use your application.

This API is designed to meet the needs of applications that upload data to GRESB in real-time or as a batch and treats the entire dataset as a single resource.


## Create/Update Asset Data Set

```
{
  "buildings": [
    {
      "partners_id": "213412434",
      "asset_name": "The White House",
      "asset_address": "1600 Pennsylvania Avenue NW, Washington DC",
      "survey_data": {
        "2013": {
          "asset_own": 6,
          "en_man_bcf_abs": 50000,
          "en_man_bcf_cov": 1000,
          "en_man_bcf_tot": 1000
        },
        "2014": {
          "asset_own": 12,
          "en_man_bcf_abs": -100,
          "en_man_bcf_cov": 1200,
          "en_man_bcf_tot": 1200
        }
      }
    }
  ]
}
```

Create or update asset level data by posting the data to:

`POST /api/responses/:response_id/asset_level_data`

The `response_id` must first be obtained by listing or creating <a href='#survey-responses'>a response</a>

The document must contain an array of objects under the "buildings" key. Each item must be an object with the following keys:

 * `partners_id` - **Required.** A unique string to identify the asset in your system. This must be unique within the data set and should not change if the asset is renamed in your system. We will use this id to uniquely identify the asset within the dataset
 * `asset_name` - A descriptive name to identify the asset to the end user.
 * `asset_address` - A street address for the asset at the time of submition. (Optional)
 * `asset_size` - Gross floor area of the asset in square meters. (Optional)
 * `property_type` - A GRESB Asset Property Type code — see https://www.gresb.com/about/lists for valid values. (Optional)
 * `survey_data`  - An object containing keys for up to two years preceeding the `survey_date` of the associated response. For example, a 2015 response would have keys for `2013` and `2014`. Within each year are keys for the metrics your application maintains.

 **Note:** All metrics are optional. You should only include the keys corrisponding to data your application can provide. See the <a href='#data-dictionary'>data dictionary</a> for a complete listing of possible keys.

 In our example, we submit some basic energy data for 6 months of 2013 and all of 2014 for "Fuel consumption from all common areas of the base building". In 2013, we had 100% coverage of 1000 m² of common area and report 50 000 kWh of fuel consumption. In 2014 a renovation increased the size of the common area to 1200 m² and again we had 100% coverage of the data. However, this year we submit (an erroneous, consumption of -100 kWh).


## Asset-level Data Validation Errors

```json
"buildings": [
    {
      "created_at": "2015-01-29T03:38:38Z",
      "updated_at": "2015-01-29T03:38:38Z",
      "asset_name": "Building 1",
      "asset_country": "XX",
      "asset_address": "1 Some Street, Sometown VT",
      "asset_size": -1,
      "partners_id": "10001",
      "survey_data": {
        "1990": {
          "asset_own": 12,
        },
        "2013": {
          "asset_own": 13,
          "en_man_bcf_abs": -1,
          "en_man_bcf_cov": 0,
          "en_man_bcf_tot": 0,
          "en_man_bcd_abs": 0,
          "en_man_bcd_cov": 0,
          "en_man_bcd_tot": 0,
          "en_man_bce_abs": 0,
          "en_man_bce_cov": 0,
          "en_man_bce_tot": 0,
          "en_man_bsf_abs": 0,
          "en_man_bsf_cov": 0,
          "en_man_bsf_tot": 0,
          "en_man_bsd_abs": 0,
          "en_man_bsd_cov": 0,
          "en_man_bsd_tot": 0,
          "en_man_bse_abs": 0,
          "en_man_bse_cov": 0,
          "en_man_bse_tot": 0,
          "en_man_bof_abs": 0,
          "en_man_boe_abs": 0,
          "en_man_tlf_abs": 0,
          "en_man_tlf_cov": 0,
          "en_man_tlf_tot": 0,
          "en_man_tld_abs": 0,
          "en_man_tld_cov": 0,
          "en_man_tld_tot": 0,
          "en_man_tle_abs": 0,
          "en_man_tle_cov": 0,
          "en_man_tle_tot": 0,
          "en_man_ttf_abs": 0,
          "en_man_ttf_cov": 0,
          "en_man_ttf_tot": 0,
          "en_man_ttd_abs": 0,
          "en_man_ttd_cov": 0,
          "en_man_ttd_tot": 0,
          "en_man_tte_abs": 0,
          "en_man_tte_cov": 0,
          "en_man_tte_tot": 0,
          "en_man_wcf_abs": 0,
          "en_man_wcf_cov": 0,
          "en_man_wcf_tot": 0,
          "en_man_wcd_abs": 0,
          "en_man_wcd_cov": 0,
          "en_man_wcd_tot": 0,
          "en_man_wce_abs": 0,
          "en_man_wce_cov": 0,
          "en_man_wce_tot": 0,
          "en_ind_wwf_abs": 0,
          "en_ind_wwf_cov": 0,
          "en_ind_wwf_tot": 0,
          "en_ind_wwd_abs": 0,
          "en_ind_wwd_cov": 0,
          "en_ind_wwd_tot": 0,
          "en_ind_wwe_abs": 0,
          "en_ind_wwe_cov": 0,
          "en_ind_wwe_tot": 0,
          "en_ind_wof_abs": 0,
          "en_ind_woe_abs": 0,
          "ghg_s1_abs": 0,
          "ghg_s1_cov": 0,
          "ghg_s1_tot": 0,
          "ghg_s2_abs": 0,
          "ghg_s2_cov": 0,
          "ghg_s2_tot": 0,
          "ghg_s3_abs": 0,
          "ghg_s3_cov": 0,
          "ghg_s3_tot": 0,
          "wat_man_bc_abs": 0,
          "wat_man_bc_cov": 0,
          "wat_man_bc_tot": 0,
          "wat_man_bo_abs": 0,
          "wat_man_tl_abs": 0,
          "wat_man_tl_cov": 0,
          "wat_man_tl_tot": 0,
          "wat_man_tt_abs": 0,
          "wat_man_tt_cov": 0,
          "wat_man_tt_tot": 0,
          "wat_man_wc_abs": 0,
          "wat_man_wc_cov": 0,
          "wat_man_wc_tot": 0,
          "wat_ind_ww_abs": 0,
          "wat_ind_ww_cov": 0,
          "wat_ind_ww_tot": 0,
          "wat_ind_wo_abs": 0,
          "was_man_haz_abs": 0,
          "was_man_nhaz_abs": 0,
          "was_man_perc": 0,
          "was_ind_haz_abs": 0,
          "was_ind_nhaz_abs": 0,
          "was_ind_perc": 0,
          "was_wd_perc": 0,
          "was_i_perc": 0,
          "was_l_perc": 0,
          "errors": {
            "en_man_bcf_abs": [
              "not_negative"
            ],
            "asset_own": [
              "months_in_year"
            ]
          }
        },
        "2012": {
          "asset_own": -1,
          "en_man_bcf_abs": 0,
          "en_man_bcd_abs": 0,
          "en_man_bce_abs": 0,
          "en_man_bsf_abs": 0,
          "en_man_bsd_abs": 0,
          "en_man_bse_abs": 0,
          "en_man_bof_abs": 0,
          "en_man_boe_abs": 0,
          "en_man_tlf_abs": 0,
          "en_man_tld_abs": 0,
          "en_man_tle_abs": 0,
          "en_man_ttf_abs": 0,
          "en_man_ttd_abs": 0,
          "en_man_tte_abs": 0,
          "en_man_wcf_abs": 0,
          "en_man_wcd_abs": 0,
          "en_man_wce_abs": 0,
          "en_ind_wwf_abs": 0,
          "en_ind_wwd_abs": 0,
          "en_ind_wwe_abs": 0,
          "en_ind_wof_abs": 0,
          "en_ind_woe_abs": 0,
          "ghg_s1_abs": 0,
          "ghg_s2_abs": 0,
          "ghg_s3_abs": 0,
          "wat_man_bc_abs": 0,
          "wat_man_bo_abs": 0,
          "wat_man_tl_abs": 0,
          "wat_man_tt_abs": 0,
          "wat_man_wc_abs": 0,
          "wat_ind_ww_abs": 0,
          "wat_ind_wo_abs": 0,
          "was_man_haz_abs": 0,
          "was_man_nhaz_abs": 0,
          "was_man_perc": 0,
          "was_ind_haz_abs": 101,
          "was_ind_nhaz_abs": 0,
          "was_ind_perc": 0,
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
            "was_l_perc": [
              "waste_lte_100"
            ]
          }
        }
      },
      "errors": {
        survey_data": [
          "inclusion 1990 2013,2012"
        ],
        "asset_size": [
          "greater_than_or_equal_to 0"
        ]
      }
    }
  ]
```

All of the available metrics are validated for data-type and range. When an invalid value is submitted it will be stored if possible but we return an error for that value. Invalid data will also be visible to the respondent within our application and will be ignored in calculations and in the final submission. To correct a value see the next section on 'Updating a Building'.

Errors can occur at the "building" level or within a given year of `survey_data`.

As an extreme example, here is a submission using all possible metrics with several validation errors. Look for "errors" keys near the bottom.

Problems with this record (part of a 2014 response) include:

* a negative `asset_size`
* an attempt to include `1990` survey data in a 2014 response.
* within it's `2013` `survey_data`
  * a negative `en_man_bcf_abs`
  * an impossible 13 months of ownership in `asset_own`
* within it's `2012` `survey_data`
  * a negative `asset_own`
  * a negative `was_i_perc`
  * a `was_wd_perc` greater then 100%
  * total waste (`was_wd_perc`+`was_i_perc`+`was_l_perc`) greater then 100%

## Updating a Building

```
{
  "buildings": [
    {
      "partners_id": "213412434",
      "asset_name": "The White House",
      "asset_address": "1600 Pennsylvania Avenue NW, Washington DC",
      "survey_data": {
        "2013": {
          "asset_own": 6,
          "en_man_bcf_abs": 50000,
          "en_man_bcf_cov": 1000,
          "en_man_bcf_tot": 1000
        },
        "2014": {
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

`POST /api/responses/:response_id/asset_level_data`

Update one more more existing buildings by posting a request including matching `partner_id`s for each existing building. Buildings not mentioned by `partner_id` will not be changed. An existing value can be cleared by setting its value to `null` or an empty string `""`. Existing values that are not mentioned will not be changed.


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

`POST /api/responses/:response_id/asset_level_data`

Add a new building by posting a request including the new building's data with a new `partner_id`. Buildings not mentioned by `partner_id` will not be changed.


## Deleting a building's data

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

`POST /api/responses/:response_id/asset_level_data`

Delete an existing building by posting a request including the buildings `partner_id` and the key `_destroy` with a `true` value.


## Show Asset-Level Data

View asset-level data already submitted by your application with with a get request to:

`GET /api/responses/:response_id/asset_level_data`


## Delete all Asset-Level Data

To delete all asset-level data associated with your application, submit a `DELETE` request.

`DELETE /api/responses/:response_id/asset_level_data`

If your HTTP client does not provide a way to send an HTTP `DELETE` request you can send a `POST` request with the parameter `_method=DELETE`.

`POST /api/responses/:response_id/asset_level_data?_method=DELETE`

