# Asset Data

Asset data can be posted via the `assets` endpoint. The data consists
of building characteristics and annual data. Building characteristics are
constant over time, whereas annual data changes annually. Some data is only
valid for the most current of the two reporting years, other data is valid for
both years.

**Building characteristics:**

  - gresb asset identifier
  - location specifics (e.g. city, address, latitude)
  - construction year
  - building certifications
  - energy ratings
  - asset ownership
  - asset size

**Annual data:**

  - yearly asset characteristics (i.e. property type, asset name)
  - efficiency measures
  - reporting characteristics
  - energy consumption
  - ghg emissions
  - water consumption
  - waste disposal

You may submit data for any number of buildings for your user, in one or more
of the aforementioned sections. The respondent may also provide data on other
assets or for the same assets but in different sections. The data you access
through the API is not specific to your application and include data on the
respondent's other assets or sections. In other words, you can access assets
from a common pool - as long as the assets are part of the same entity. It is
the responsibility of the respondent to make sure that data submitted from
multiple API partners does not conflict with each other. This API is designed
to meet the needs of applications that upload data to GRESB in real-time or as
a batch.

As communicated in the data partner letter sent earlier in December 2024, four
new data points have been added to the asset dataset to measure the quality of 
renewable energy procurement for the reporting year 2024. The 
four new data fields will only be validated from 2024 onwards.
The validation logic only applies whenever an asset is part of the standing 
investment (operational) for a given year i.e 
`ncmr_status` = "Standing Investment"
`ncmr_status` = ["New Construction, "Major Renovation"] when [`ncmr_from`, `ncmr_to`] 
is not entire [calendar, fiscal] year. An example has been added in the first GET method.
Please refer to the [Data Dictionary](#data-dictionary). for the definitions of the new fields and their 
possible string values. 


## GET /entities/{entity_id}/assets
```shell
curl https://api.gresb.com/api/v1/entities/{entity_id}/assets \
  -H "Authorization: Bearer $ACCESS_TOKEN"
```
Returns the assets of the entity specified in the URL, along with any annual data (if available).

> Response:

```json
[
    {
        "gresb_asset_id": {asset_id},
        "name": "API Created Asset",
        "country": "NL",
        "state_province": "North Holland",
        "city": "Amsterdam",
        "address": "Barbara Strozzilaan 374",
        "lat": 52.335915637320596,
        "lng": 4.889755053768094,
        "partners_id": 123456,
        "construction_year": 1800,
        "size": 5000,
        "ownership": 55,
        "property_type_code": "HTL",
        "certifications":    [
            {
            "id": {unique_id},
            "certification_id": 598,
            "name": "BCA Green Mark/Existing Buildings",
            "level": "Platinum",
            "size": 230,
            "year": 2017,
            "_validations": {"errors": {}}
            }
        ],
        "annual_data":    [
            {
                "year": {reporting_year - 1},
                "en_tot_wd": 4000,
                "en_tot_we": 900,
                "en_tot_wf": 100,
                "ghg_tot_s3_w": 5000,
                "ncmr_status": "Standing Investment",
                "owned_entire_period": true,
                "en_ren_ofs_pbl": 900,
                "en_ren_ofs_claim": "BUN",
                "en_ren_ofs_proc_type": "SGF",
                "en_ren_ofs_vin_gen": "PEY",
                "tenant_ctrl": true,
                "was_pcov": 0,
                "wat_tot_w": 5000,
                "whole_building": true,
                "asset_vacancy":0,
                "_validations": {
                    "errors": {}}
            }
        ],
        "_outliers": [],
        "created_at": {date},
        "updated_at": {date},
    },
    {
        "gresb_asset_id": {asset_id_2},
        "name": "The White House",
        "country": "US",
        "state_province": "DC",
        "city": "Washington, DC",
        "address": "1900 Pennsylvania Avenue NW",
        "lat": null,
        "lng": null,
        "partners_id": 123456,
        "construction_year": 1792,
        "size": 5000,
        "ownership": null,
        "property_type_code": "HTL",
        "certifications": [
            {
                "id": {unique_id_2},
                "certification_id": 1140,
                "name": "2000-Watt/Site - Operational",
                "level": null,
                "size": 123,
                "year": 2017,
                "_validations": {
                    "errors": {}
                }
            }
        ],
        "size": 5000.0,
        "annual_data": [
            {
                "year": {reporting_year - 1},
                "asset_vacancy": 0,
                "en_tot_wd": 4000,
                "en_tot_we": 900,
                "en_tot_wf": 100,
                "ghg_tot_s3_w": 5000,
                "ncmr_status": "Standing Investment",
                "owned_entire_period": true,
                "tenant_ctrl": true,
                "was_pcov": 0,
                "wat_tot_w": 5000,
                "whole_building": true
            },
            {
                "year": {reporting_year - 2},
                "asset_vacancy": 0,
                "en_tot_lc_te": 112.4,
                "en_tot_wd": 4000,
                "en_tot_we": 900,
                "en_tot_wf": 100,
                "ghg_tot_s3_w": 5000,
                "ncmr_status": "Standing Investment",
                "owned_entire_period": true,
                "tenant_ctrl": true,
                "was_pcov": 0,
                "wat_tot_w": 5000,
                "whole_building": true
            }
        ],
        "_outliers": [],
        "created_at": {date},
        "updated_at": {date}
    }
]
```

## GET /entities/{entity_id}/assets/{asset_id}
```shell
curl https://api.gresb.com/api/v1/entities/{entity_id}/assets/{asset_id} \
  -H "Authorization: Bearer $ACCESS_TOKEN"
```
Returns the asset specified in the URL, along with its annual data (if available).

> Response

```json
{
    "gresb_asset_id": {asset_id},
    "name": "API Created Asset",
    "country": "NL",
    "state_province": "North Holland",
    "city": "Amsterdam",
    "address": "Barbara Strozzilaan 374",
    "lat": 52.335915637320596,
    "lng": 4.889755053768094,
    "partners_id": 123456,
    "construction_year": 1800,
    "size": 5000,
    "ownership": 55,
    "property_type_code": "HTL",
    "certifications": [
        {
            "id": {unique_id},
            "certification_id": 598,
            "name": "BCA Green Mark/Existing Buildings",
            "level": "Platinum",
            "size": 230,
            "year": 2017
        }
        ],
    "annual_data": [
        {
            "year": {reporting_year - 1},
            "en_tot_wd": 4000,
            "en_tot_we": 900,
            "en_tot_wf": 100,
            "ghg_tot_s3_w": 5000,
            "ncmr_status": "Standing Investment",
            "owned_entire_period": true,
            "tenant_ctrl": true,
            "was_pcov": 0,
            "wat_tot_w": 5000,
            "whole_building": true,
            "asset_vacancy":0
        },
        {
            "year": {reporting_year - 2},
            "en_tot_wd": 4000,
            "en_tot_we": 900,
            "en_tot_wf": 100,
            "ghg_tot_s3_w": 5000,
            "ncmr_status": "Standing Investment",
            "owned_entire_period": true,
            "tenant_ctrl": true,
            "was_pcov": 0,
            "wat_tot_w": 5000,
            "whole_building": true,
            "asset_vacancy":0,
            "en_tot_lc_te": 112.4
        }
    ]
}
```


## POST /entities/{entity_id}/assets

Creates a new asset for the specified entity in the URL. Returns the created
asset, along with any validation errors and warnings.

Some validation errors will prevent the asset from being created. Check the `gresb_asset_id` to verify that an asset is created and has unique ID assigned.

`country`, `state_province`, `city`, and `ownership` are fields required to create an asset and all are posted year agnostically. The fields `size`, `property_type_code` and `name` have been moved outside the `annual_data` object and are now part of the year-agnostic data fields. They are considered for the most recent reporting year.

If no record for that year is available, a new one will be created. Old records will be updated but won't have any effect on past surveys and rankings.
**You can update data for up to 5 years prior to the Assessment year.**

For certifications we require the _certification_id_ and the _size_ (the size of your asset that received the certification). If a certification is divided in multiple _levels_, we also require the level.

<aside class="notice">
  Notice the <code>gresb_asset_id</code> in the response. This is a unique ID
  generated from the API, if the asset is complete (no validation errors).
  It's highly recommended to keep this ID in your database, as it's the only
  way to identify the new asset. You don't have to provide it in the response,
  in fact it is ignored, if you do.
</aside>

<aside class="warning">
Beware that if the asset we are trying to create or update raises any validation errors due to our request, then the request will not be processed. For it to be processed regardless of the validation errors that may arise, we need to use always_create or always_update methods in the /batches endpoint.
</aside>

For a complete list of fields, and their meaning, see the
[Data Dictionary](#data-dictionary).

To bulk-create more than a few assets, please submit a
[Batch Operation](#batch-asset-operations).

```shell
curl -X POST https://api.gresb.com/api/v1/entities/{entity_id}/assets \
  -H "Authorization: Bearer $ACCESS_TOKEN" \
  -H "Content-Type: application/json" \
  -d @- <<JSON
```

> Request:

```json
{
    "name": "API Created Asset",
    "country": "NL",
    "state_province": "North Holland",
    "city": "Amsterdam",
    "address": "Barbara Strozzilaan 374",
    "lat": 52.335915637320596,
    "lng": 4.889755053768094,
    "partners_id": 123456,
    "construction_year": 1800,
    "size": 5000,
    "ownership": 55,
    "property_type_code": "HTL",
    "certifications": [
        {
            "id": {unique_id},
            "certification_id": 598,
            "name": "BCA Green Mark/Existing Buildings",
            "level": "Platinum",
            "size": 230,
            "year": 2017
        }
        ],
    "annual_data": [
        {
            "year": {reporting_year - 1},
            "en_tot_wd": 4000,
            "en_tot_we": 900,
            "en_tot_wf": 100,
            "ghg_tot_s3_w": 5000,
            "ncmr_status": "Standing Investment",
            "owned_entire_period": true,
            "tenant_ctrl": true,
            "was_pcov": 0,
            "wat_tot_w": 5000,
            "whole_building": true,
            "asset_vacancy":0
        },
        {
            "year": {reporting_year - 2},
            "en_tot_wd": 4000,
            "en_tot_we": 900,
            "en_tot_wf": 100,
            "ghg_tot_s3_w": 5000,
            "ncmr_status": "Standing Investment",
            "owned_entire_period": true,
            "tenant_ctrl": true,
            "was_pcov": 0,
            "wat_tot_w": 5000,
            "whole_building": true,
            "asset_vacancy":0,
            "en_tot_lc_te": 112.4
        }
    ]
}
```

> Response:

```json
{
    "gresb_asset_id": {asset_id},
    "name": "API Created Asset",
    "country": "NL",
    "state_province": "North Holland",
    "city": "Amsterdam",
    "address": "Barbara Strozzilaan 374",
    "lat": 52.335915637320596,
    "lng": 4.889755053768094,
    "partners_id": 123456,
    "construction_year": 1800,
    "size": 5000,
    "ownership": 55,
    "property_type_code": "HTL",
    "certifications": [
        {
            "id": {unique_id},
            "certification_id": 598,
            "name": "BCA Green Mark/Existing Buildings",
            "level": "Platinum",
            "size": 230,
            "year": 2017,
            "_validations": {
                "errors": {}
            }
        }
        ],
    "annual_data": [
        {
            "year": {reporting_year - 1},
            "en_tot_wd": 4000,
            "en_tot_we": 900,
            "en_tot_wf": 100,
            "ghg_tot_s3_w": 5000,
            "ncmr_status": "Standing Investment",
            "owned_entire_period": true,
            "tenant_ctrl": true,
            "was_pcov": 0,
            "wat_tot_w": 5000,
            "whole_building": true,
            "asset_vacancy":0,
            "_validations": {
                "errors": {}
            }
        },
        {
            "year": {reporting_year - 2},
            "en_tot_wd": 4000,
            "en_tot_we": 900,
            "en_tot_wf": 100,
            "ghg_tot_s3_w": 5000,
            "ncmr_status": "Standing Investment",
            "owned_entire_period": true,
            "tenant_ctrl": true,
            "was_pcov": 0,
            "wat_tot_w": 5000,
            "whole_building": true,
            "asset_vacancy":0,
            "en_tot_lc_te": 112.4,
            "_validations": {
                "errors": {}
            }
        }
        ],
    "_outliers": [],
    "created_at": {date},
    "updated_at": {date},
    "_validations": {
        "errors": {}
    }
}
```

## PATCH /entities/{entity_id}/assets/{asset_id}

Updates the asset specified in the URL. This endpoint allows partial updates,
meaning you only need to provide the changes you want to apply and they are
merged with the existing asset fields. To clear an existing value, you need to
explicitly set it to `null`. The changed asset is validated and is only saved
if there are no validation errors. In all cases, you get a response with all
the asset fields and any validation errors/warnings.

In the example shown on the right, we attempt to increase `size` from *5000* to *6000*; however, the requested update does not get recorded due to the new value having introduced validation errors. Make note of the HTTP status informing the user of the unprocessed content when there is such a case.

For a complete list of fields, and their meaning, see the
[Data Dictionary](#data-dictionary).

To bulk-update more than a few assets, please submit a
[Batch Operation](#batch-asset-operations).

```shell
curl -X PATCH https://api.gresb.com/api/v1/entities/{entity_id}/assets/{asset_id} \
  -H "Authorization: Bearer $ACCESS_TOKEN" \
  -H "Content-Type: application/json" \
  -d @- <<JSON
```
> Request:

```json
{
    "gresb_asset_id": {asset_id},
    "size": 6000,

}
```
> Response:

```json
{
    "gresb_asset_id": {asset_id},
    "country": "NL",
    "state_province": "North Holland",
    "city": "Amsterdam",
    "address": "Barbara Strozzilaan 374",
    "lat": 52.335915637320596,
    "lng": 4.889755053768094,
    "partners_id": 123456,
    "construction_year": 1800,
    "size": 6000,
    "ownership": 60,
    "property_type_code": "HTL",
    "certifications": [
        {
            "id": {unique_id},
            "certification_id": 598,
            "name": "BCA Green Mark/Existing Buildings",
            "level": "Platinum",
            "size": 230,
            "year": 2017,
            "_validations": {
                "errors": {}
            }
        }
        ],
    "annual_data": [
        {
            "year": {reporting_year - 1},
            "en_tot_wd": 4000,
            "en_tot_we": 900,
            "en_tot_wf": 100,
            "ghg_tot_s3_w": 5000,
            "ncmr_status": "Standing Investment",
            "owned_entire_period": true,
            "tenant_ctrl": true,
            "was_pcov": 0,
            "wat_tot_w": 5000,
            "whole_building": true,
            "asset_vacancy":50,
            "_validations": {
                "errors": {
                    "ghg_tot_s3_w": [
                        "Must be less than or equal to size",
                        "Must be equal to size if the whole building is tenant controlled"
                    ],
                    "en_tot_wf": [
                        "Must be less than or equal to size"
                    ],
                    "wat_tot_w": [
                        "must be equal to size"
                    ]
                }
            }
        },
        {
            "year": {reporting_year - 2},
            "en_tot_wd": 4000,
            "en_tot_we": 900,
            "en_tot_wf": 100,
            "ghg_tot_s3_w": 5000,
            "ncmr_status": "Standing Investment",
            "owned_entire_period": true,
            "tenant_ctrl": true,
            "was_pcov": 0,
            "wat_tot_w": 5000,
            "whole_building": true,
            "asset_vacancy":50,
            "_validations": {
                "errors": {
                    "ghg_tot_s3_w": [
                        "Must be less than or equal to size",
                        "Must be equal to size if the whole building is tenant controlled"
                    ],
                    "en_tot_wf": [
                        "Must be less than or equal to size"
                    ],
                    "wat_tot_w": [
                        "must be equal to size"
                    ]
                }
            }
        }
        ],
    "_outliers": [],
    "created_at": {date},
    "updated_at": {date},
    "_validations": {
        "errors": {}
    }
}
```

## DELETE /entities/{entity_id}/assets/{asset_id}
Deletes the asset specified in the URL. Returns the deleted asset if the
operation is successful.

```shell
curl -X DELETE https://api.gresb.com/api/v1/entities/{entity_id}/assets/{asset_id} \
  -H "Authorization: Bearer $ACCESS_TOKEN"
```

> Response:

```json
{
    "gresb_asset_id": {asset_id},
    "country": "NL",
    "state_province": "North Holland",
    "city": "Amsterdam",
    "address": "Barbara Strozzilaan 374",
    "lat": 52.335915637320596,
    "lng": 4.889755053768094,
    "partners_id": 123456,
    "construction_year": 1800,
    "ownership": 60,
    "certifications": [],
    "size": 5000.0,
    "annual_data": [],
    "_outliers": [],
    "created_at": {date},
    "updated_at": {date}
}
```

## POST /entities/{entity_id}/asset_spreadsheet_export
Exports all the entity's assets to a XSLX spreadsheet and sends a POST request to the provided callback URL containing the file URL. It will be accessible for 15 minutes.

```shell
curl -X POST https://api.gresb.com/api/v1/entities/{entity_id}/asset_spreadsheet_export \
  -H "Authorization: Bearer $ACCESS_TOKEN" \
  -d "callback_url=https://your.callback.url"
```

> Callback request:

```json
{
    "url": "https://gresb-prd-private.s3.amazonaws.com/production/asset-excels/..."
}
```

