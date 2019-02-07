# Batch Asset Operations

> Request format

```javascript
{
    "create": [
      // any number of asset representations
    ],
    "update": [
      // any number of partial asset representations
      // each one must include "gresb_asset_id"
    ],
    "delete": [
      // objects with "gresb_asset_id" only
    ]
}
```

The API offers an endpoint specifically for scenarios when you need to create
or update multiple assets with one request. The request format is similar, with
one major difference: all asset representations are enclosed in an array, and
assigned to fields which are named `create`, `update` and `delete` depending on
what you want to do with the array of assets. All three fields are optional. In
any case, you probably want to provide at least one, otherwise no operation
will be performed.

> Response format

```javascript
{
    "created": [], // successfully created assets, with their "gresb_asset_id" added
    "updated": [], // successfully updated assets
    "deleted": [], // successfully deleted assets
    "invalid": [], // failed creates and updates
    "not_found": [], // failed deletes or updates due to incorrect "gresb_asset_id"
    "counts": { // counts of the items in the arrays above
        "created": 0,
        "updated": 0,
        "deleted": 0,
        "invalid": 0,
        "not_found": 0
    }
}
```

This endpoint returns a response in a similar format to the request. Instead of
`create`, `update`, `delete`, you get `created`, `updated`, `deleted`. Each one
will contain an array of asset representations which were successfully created,
updated or deleted, respectively.

In addition to the fileds above, you will also get `invalid`, `not_found` and
`counts`. `invalid` will contain assets you attempted to create, or update, but
failed validation. These records were not saved and you will get a
`_validations` field for each, with more details.

<aside class="notice">
  Please note, the examples in this sections are not valid JSON. For brevity,
  some fields have been removed. In order to run them, you need to take out
  the comment lines and add the fields you need. Refer to the <a
  href="#data-dictionary">data dictionary</a> for a detailed explanation of all
  available fields.
</aside>

## POST /entities/{entity_id}/assets/batches

```shell
curl -X POST https://api.gresb.com/api/v0/entities/5028/assets/batches \
-H "Authorization: Bearer $ACCESS_TOKEN" \
-H "Content-Type: application/json" \
-d @- <<JSON
{
    "create": [
        {
            "city": "Amsterdam",
            "country": "NL",
            "partners_id": "ABC/X/136941",
            // ... trimmed for brevity ...
            "annual_data": [
                {
                    "year": 2018,
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
                }
            ]
        }
    ],
    "update": [
        {
            "gresb_asset_id": 456,
            "address": "Barbara Strozzilaan 101",
            "annual_data": [
                {
                    "year": 2018,
                    "asset_name": "name changed in 2018"
                }
            ]
        }
    ],
    "delete": [
        {"gresb_asset_id": 101},
        {"gresb_asset_id": 356}
    ]
}
JSON
```

> Response

```javascript
{
    "created": [
        {
            "gresb_asset_id": 749,
            "city": "Amsterdam",
            "country": "NL",
            "partners_id": "ABC/X/136941",
            // ... trimmed for brevity ...
            "annual_data": [
                {
                    "year": 2018,
                    // ... trimmed for brevity ...
                }
            ]
        }
    ],
    "updated": [
        {
            "gresb_asset_id": 456,
            "address": "Barbara Strozzilaan 101",
            // ... trimmed for brevity ...
            "annual_data": [
                {
                    "year": 2018,
                    "asset_name": "name changed in 2018"
                    // ... trimmed for brevity ...
                }
            ]
        }
    ],
    "deleted": [
        {
            "gresb_asset_id": 356,
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
            }
        }
    ],
    "not_found": [101]
    "counts": {
        "created": 1,
        "updated": 1,
        "deleted": 1,
        "invalid": 1,
        "not_found": 1
    }
```

In this example, we are going to create two new assets, update an existing one
and delete two. Many required fields are missing for brevity, but assume that
one of the assets we want to create is missing some required data and the other
is fine. Assume the update is valid and that one of the assets we want to
delete does not exist. The example response shows what you would expect to get
back.
