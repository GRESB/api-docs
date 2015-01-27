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
          "months_owned": 6,
          "en_man_bcf_abs": 50000,
          "en_man_bcf_cov": 1000,
          "en_man_bcf_tot": 1000
        },
        "2014": {
          "months_owned": 12,
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

The `response_id` must first be obtained by listing or creating a <a href='#survey-responses'> a response</a>

The document must contain an array of objects under the "buildings" key. Each item must be an object with the following keys:

 * **partners_id** - A unique string to identify the asset in your system. This must be unique within the data set and should not change if the asset is renamed in your system. We will use this id to uniquely identify the asset within the dataset
 * **asset_name** - A descriptive name to identify the asset to the end user.
 * **asset_address** - A street address for the asset at the time of submition. (Optional)
 * **asset_size** - Gross floor area of the asset in square meters. (Optional)
 * **property_type** - A GRESB Asset Property Type code — see https://www.gresb.com/about/lists for valid values. (Optional)
 * **survey_data**  - An object containing keys for up to two years preceeding the **survey_date** of the response. For example, a 2015 response would have keys for 2013 and 2014. Within each year are keys for the metrics your application maintains. See Asset Level Data Dictionary for a complete listing of possible keys. 

 In our exmaple, we submit data for 6 months of 2013 and all of 2014 for "Fuel consumption from all common areas of the base building". In 2013, we had 100% coverage of 1000 m² of common area and report 50 000 kWh of fuel consumption. In 2014 a renovation increased the size of the common area to 1200 m² and again we had 100% coverage of the data. However, this year we submit (an erroneous, consumption of -100 kWh).


## Asset-level Data Validation Errors

All of the available metrics are validated for data-type and range. When an invalid value is submitted it will be stored if possible but the building will include an error value for that key. Invalid data will be visible to the respondent within our application but will be ignored in calculations and in the final submition. To correct a value see the next section on 'Updating a Building'.


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
          "months_owned": 6,
          "en_man_bcf_abs": 50000,
          "en_man_bcf_cov": 1000,
          "en_man_bcf_tot": 1000
        },
        "2014": {
          "months_owned": 12,
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

If your HTTP client does not provide a way to send the HTTP `DELETE` verb. You can send a post request with the parameter `_method=DELETE`.

`POST /api/responses/:response_id/asset_level_data?_method=DELETE`

