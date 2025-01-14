# Asset Batch Operations
The API offers an endpoint specifically for scenarios when you need to create
or update multiple assets with one request. The request format is similar, with
one major difference: all asset representations are enclosed in an array, and
assigned to fields which are named `create`, `always_create`, `update`,
`always_update` and `delete` depending on what you want to do with the array of
assets. All five fields are optional. In any case, you probably want to provide
at least one, otherwise no operation will be performed.

> Request format

```json
{
    "create": [
      // any number of asset representations
    ],
    "always_create": [
      // Same as above, but always creates all items even if they fail
      // some validation rules. A few attributes (see below) are still
      // required, and the batch will fail if they are not found/valid.
    ],
    "update": [
      // any number of partial asset representations
      // each one must include "gresb_asset_id"
    ],
    "always_update": [
      // Same as above, but always updates all (found) items even if they
      // fail some validation rules.
      // Each one must include "gresb_asset_id".
    ],
    "delete": [
      // objects with "gresb_asset_id" only
    ]
}
```
This endpoint returns a response in a similar format to the request. Instead of
`create`, `always_create`, `update`, `always_update`, `delete`, you get
`created`, `always_created`, `updated`, `always_updated`, `deleted`. Each one
will contain an array of asset representations which were successfully created,
created regardless of validations, successfully updated, updated regardless of
validations, or deleted, respectively.

In addition to the fields above, you will also get `invalid`, `not_found` and
`counts`. `invalid` will contain assets you attempted to create, or update, but
failed validation. These records will not be saved and you will get a
`_validations` field for each, with more details. You can use `always_create`
and `always_update` to bypass the validation procedure.

<aside class="notice">
  Please note, the examples in this sections are not valid JSON. For brevity,
  some fields have been removed. In order to run them, you need to take out the
  comment lines and add the fields you need. Refer to the <a
  href="#asset-data-dictionary">data dictionary</a> for a detailed explanation of all
  available fields.
</aside>

<aside class="warning">
  The field <code>always_create</code> requires 5 data variables. Namely,
  <code>country</code>, <code>city</code>, <code>state_province</code>,
  <code>asset_name</code>, and <code>property_type_code</code>. If one of these
  variables is missing, the entire batch request will fail! The field
  <code>always_update</code> has no minimal requirements. Please be aware that
  although the API accepts invalid data, the data must be valid in order for
  the user to update the portfolio data in the Real Estate Assessment form the
  GRESB Asset Portal.
</aside>

Please be aware that access to this endpoint is limited in order to prevent abuse
or overuse caused by a buggy or malicious client. It happens in two ways:

  - Not more than 10 requests are allowed per minute.
  - Each of the fields in the request is limited to 5000 assets at once.

These values are experimental and therefore are subject to change.
However, you are unlikely to reach them during normal operation.

The information about the throttling is also provided in the following headers:

  - `X-RateLimit-Remaining` which contains remaining amount of allowed requests, -1 if throttled.
  - `X-RateLimit-Limit` contains the maximum number of allowed requests during a time period.
  - `X-RateLimit-Reset` expected counter reset time in UTC epoch seconds.

> Response format:

```json
{
    "created": [
      // successfully created assets, with their "gresb_asset_id" added
    ],
    "always_created": [
      // created assets (even invalid), with their "gresb_asset_id" added
    ],
    "updated": [
      // successfully updated assets, only those whose "gresb_asset_id" exist
    ],
    "always_updated": [
      // updated assets (even invalid), only those whose "gresb_asset_id" exist
    ],
    "deleted": [
      // successfully deleted assets, only those whose "gresb_asset_id" exist
    ],
    "invalid": [
      // failed creates and updates due to validation errors
    ],
    "not_found": [
      // failed deletes or updates due to incorrect/missing "gresb_asset_id"
    ],
    "counts": { // counts of the items in the arrays above
        "created": 0,
        "always_created": 0,
        "updated": 0,
        "always_updated": 0,
        "deleted": 0,
        "invalid": 0,
        "not_found": 0
    }
}
```
## POST /entities/{entity_id}/assets/batches

```shell
curl -X POST https://api.gresb.com/api/v1/entities/{entity_id}/assets/batches \
  -H "Authorization: Bearer $ACCESS_TOKEN" \
  -H "Content-Type: application/json" \
  -d @-
```
In this example, we are going to create two new assets where one is always
created, update two existing assets where one is always updated, and delete two
assets.

Many required fields are missing for brevity. The example response shows
what you would expect to get back.
> Request:

```json
{
	"create": [
        {
            "asset_name": "The White House",
            "country": "US",
            "state_province": "DC",
            "city": "Washington, DC",
            "address": "1600 Pennsylvania Avenue NW",
            "construction_year": 1800,
            "asset_size": 5000,
            "partners_id": 123456,
            "property_type_code": "HTL",
            "certifications": [{
                    "certification_id": 598,
                    "name": "BCA Green Mark/Existing Buildings",
                    "level": "Platinum",
                    "size": 230,
                    "year": 2017
                }
            ],
            "annual_data": [{
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
                    "asset_vacancy": 0
            }]
        }
    ],
    "always_create": [
        {
            "country": "US",
            "state_province": "DC",
            "city": "Washington, DC",
            "asset_name": "The White House 2",
            "property_type_code": "HTL"
            "annual_data": [
                {
                    "year": {reporting_year - 1},
                }
            ]
        }
    ],
    "update": [
        {
            "gresb_asset_id": {asset_id_update},
            "address": "1600 Pennsylvania Avenue NW",
            "asset_name": "The Grand White House",
            "property_type_code": "HTL"
            "annual_data": [
                {
                    "year": {reporting_year - 1},
                }
            ]
        }
    ],
    "always_update": [
        {
            "gresb_asset_id": {asset_id_always_update},
            "address": "1600 Pennsylvania Avenue NW",
            "asset_name": "The Pink House",
            "annual_data": [
                {
                    "year": {reporting_year - 2},
                    "tenant_ctrl": false
                }
            ]
        }

    ],
    "delete": [
        {
            "gresb_asset_id": {asset_id_delete}
        },
        {
            "gresb_asset_id": {asset_id_delete_2}
        }
    ]
}
```

> Response:

```json
{
   "created": [
        {
            "gresb_asset_id": {asset_id_create},
            "country": "US",
            "state_province": "DC",
            "city": "Washington, DC",
            "address": "1600 Pennsylvania Avenue NW",
            //...trimmed for brevity ...
            "_outliers": [],
            "created_at": {date},
            "updated_at": {date},
            "_validations": {
                "errors": {}
            }
        }
    ],
    "always_created": [
        {
            "gresb_asset_id": {asset_id_always_create},
            "country": "US",
            "state_province": "DC",
            "city": "Washington, DC",
            "asset_size": null,
            "asset_name": "The White House 2",
            "property_type_code": "HTL",
            //...trimmed for brevity ...
            "annual_data": [      {
                "year": {reporting_year - 1},
                "owned_entire_period": false,
                "_validations": {
                    "errors":   
                    {
                        "tenant_ctrl": ["must be true or false"],
                        "ownership_from": ["Either ownership_from or ownership_to must be present if asset is not owned for entire reporting period"],
                        "ownership_to": ["Either ownership_from or ownership_to must be present if asset is not owned for entire reporting period"]
                    }
                }
            }],
            "_outliers": [],
            "created_at": {date},
            "updated_at": {date},
            "_validations": {
                "errors": 
                {
                    "asset_size": ["is not a number"]
                }
            }
        }
    ],
   "updated": [
        {
            "gresb_asset_id": {asset_id_update},
            "country": "US",
            "state_province": "DC",
            "city": "Washington, DC",
            //...trimmed for brevity ...
            "_outliers": [],
            "created_at": {date},
            "updated_at": {date}
        }
    ],
    "always_updated": [
        {
            "gresb_asset_id": {asset_id_always_update},
            "country": "US",
            "state_province": "DC",
            "city": "Washington, DC",
            "address": "1600 Pennsylvania Avenue NW",
            //...trimmed for brevity ...
            "_outliers": [],
            "created_at": {date},
            "updated_at": {date},
            "_validations": {
                "errors": {}
            }
        }
    ],
    "deleted":  [
        {
            "gresb_asset_id": {asset_id_delete},
            "country": "US",
            "state_province": "DC",
            "city": "Washington, DC",
            //...trimmed for brevity ...
            "_outliers": [],
            "created_at": {date},
            "updated_at": {date},
            "_validations": {"errors": {}}
        },
        {
            "gresb_asset_id": {asset_id_delete_2},
            "country": "US",
            "state_province": "DC",
            "city": "Washington, DC",
            //...trimmed for brevity ...
            "_outliers": [],
            "created_at": {date},
            "updated_at": {date},
            "_validations": {
            "errors": {}
            }
        }
   ],
   "invalid": [],
   "not_found": [],
   "counts":    {
      "created": 1,
      "always_created": 1,
      "updated": 1,
      "always_updated": 1,
      "deleted": 2,
      "invalid": 0,
      "not_found": 0
   }
}
```