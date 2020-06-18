# Batch Asset Operations

> Request format

```javascript
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

The API offers an endpoint specifically for scenarios when you need to create
or update multiple assets with one request. The request format is similar, with
one major difference: all asset representations are enclosed in an array, and
assigned to fields which are named `create`, `always_create`, `update`,
`always_update` and `delete` depending on what you want to do with the array of
assets. All five fields are optional. In any case, you probably want to provide
at least one, otherwise no operation will be performed.

> Response format

```javascript
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
  href="#data-dictionary">data dictionary</a> for a detailed explanation of all
  available fields.
</aside>

<aside class="warning">
  The field <code>always_create</code> requires 5 data variables. Namely,
  <code>country</code>, <code>city</code>, <code>state_province</code>,
  <code>asset_name</code>, and <code>property_type_code</code>. If one of these
  variables is missing, the entire batch request will fail! The field
  <code>always_update</code> has no minimal requirements. Please be aware that
  although the API accepts invalid data, the data must be valid in order for
  the user to update the portfolio data in the Real Estate assessment form the
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

## POST /entities/{entity_id}/assets/batches

```shell
curl -X POST https://api.gresb.com/api/v1/entities/16066/assets/batches \
  -H "Authorization: Bearer $ACCESS_TOKEN" \
  -H "Content-Type: application/json" \
  -d @- <<JSON
{
    "create": [
        {
            "city": "Borsele",
            "country": "NL",
            "partners_id": "ABC/X/136941",
            // ... trimmed for brevity ...
            "annual_data": [
                {
                    "year": 2018,
                    "property_type_code": "OTPI",
                    "asset_size": 16500,
                    // ... trimmed for brevity ...
                },
                {
                    "year": 2017,
                    // ... trimmed for brevity ...
                }
            ]
        },
        {
            "city": "Paris",
            "country": "FR",
            "partners_id": "FFZ/Q/006941",
            // ... trimmed for brevity ...
            "annual_data": [
                {
                    "year": 2018,
                    // ... trimmed for brevity ...
                },
                {
                    "year": 2017,
                    // ... trimmed for brevity ...
                }
            ]
        }
    ],
    "always_create": [
        {
            "city": "Franekeradeel",
            "state_province": "Flevoland",
            "country": "NL",
            "annual_data": [
                {
                    "year": 2018,
                    "asset_name": "Marcio Dolfing",
                    "property_type_code": "LL0"
                }
            ]
        }
    ],
    "update": [
        {
            "gresb_asset_id": 369076,
            "address": "1775 Lange Viestraat",
            "annual_data": [
                {
                    "year": 2018,
                    "asset_name": "Name changed in 2018"
                }
            ]
        }
    ],
    "always_update": [
        {
            "gresb_asset_id": 369077,
            "annual_data": [
                {
                    "year": 2018,
                    "property_type_code": "OCHI"
                }
            ]
        }
    ],
    "delete": [
        {
            "gresb_asset_id": 369074
        },
        {
            "gresb_asset_id": 369075
        }
    ]
}
JSON
```

> Response

```javascript
{
    "created": [
        {
            "gresb_asset_id": 369078,
            "city": "Borsele",
            "country": "NL",
            "partners_id": "ABC/X/136941",
            // ... trimmed for brevity ...
            "annual_data": [
                {
                    "year": 2018,
                    "property_type_code": "OTPI",
                    // ... trimmed for brevity ...
                    "_validations": {
                        "errors": {}
                    }
                },
                {
                    "year": 2017,
                    // ... trimmed for brevity ...
                    "_validations": {
                        "errors": {}
                    }
                }
            ],
            "_validations": {
                "errors": {}
            },
            "_outliers": []
        }
    ],
    "always_created": [
        {
            "gresb_asset_id": 369079,
            "country": "NL",
            "state_province": "Flevoland",
            "city": "Franekeradeel",
            // ... trimmed for brevity ...
            "annual_data": [
                {
                    "year": 2018,
                    "asset_name": "Marcio Dolfing",
                    "property_type_code": "LL0",
                    "_validations": {
                        "errors": {}
                    }
                },
                {
                    "year": 2017,
                    "_validations": {
                        "errors": {}
                    }
                }
            ],
            "_validations": {
                "errors": {}
            },
            "_outliers": []
        }
    ],
    "updated": [
        {
            "gresb_asset_id": 369076,
            "address": "1775 Lange Viestraat",
            // ... trimmed for brevity ...
            "annual_data": [
                {
                    "year": 2018,
                    "asset_name": "Name changed in 2018",
                    // ... trimmed for brevity ...
                }
            ],
            "_validations": {
                "errors": {}
            },
            "_outliers": []
        }
    ],
    "always_updated": [
        {
            "gresb_asset_id": 369077,
            // ... trimmed for brevity ...
            "annual_data": [
                {
                    "year": 2018,
                    // ... trimmed for brevity ...
                    "property_type_code": "OCHI",
                    "_validations": {
                        "errors": {}
                    }
                },
                {
                    "year": 2017,
                    "_validations": {
                        "errors": {}
                    }
                }
            ],
            "_validations": {
                "errors": {}
            },
            "_outliers": []
        }
    ],
    "deleted": [
        {
            "gresb_asset_id": 369074,
            // ... trimmed for brevity ...
        }
    ],
    "invalid": [
        {
            "gresb_asset_id": null,
            "city": "Paris",
            "country": "FR",
            "partners_id": "FFZ/Q/006941",
            // ... trimmed for brevity ...
            "_validations": {
                "errors": {
                    "state_province": "can't be blank"
                }
            },
            "_outliers": []
        }
    ],
    "not_found": [369075],
    "counts": {
        "created": 1,
        "always_created": 1,
        "updated": 1,
        "always_updated": 1,
        "deleted": 1,
        "invalid": 1,
        "not_found": 1
    }
}
```

In this example, we are going to create three new assets where one is always
created, update two existing assets where one is always updated, and delete two
assets. Many required fields are missing for brevity, but assume that one of
the assets we want to create is missing some required data and the other two
are fine. Assume both updates are valid and that one of the assets we want to
delete does not exist. The example response shows what you would expect to get
back.
