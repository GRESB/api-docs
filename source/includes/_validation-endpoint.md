# Asset Validation Endpoint
The API offers an endpoint specifically to **only validate** (multiple) assets.
The request format is similar, all asset representations have to be enclosed in an
array and are assigned to the fields `create` or `update`.

The `update` array requires assets with an `gresb_asset_id`.

<aside class="notice">
  Please note, the examples in this sections are not valid JSON. For brevity,
  some fields have been removed. In order to run them, you need to take out the
  comment lines and add the fields you need. Refer to the <a
  href="#asset-data-dictionary">data dictionary</a> for a detailed explanation of all
  available fields.
</aside>

> Request format:

```json
{
    "create": [
      // any number of asset representations
    ],
    "update": [
      // any number of partial asset representations
      // each one must include "gresb_asset_id"
    ]
}
```
> Response format:

```json
{
    "valid": [
      // all records that passed validation
    ],
    "invalid": [
      // all invalid records
    ],
    "not_found": [
      // failed to find via "gresb_asset_id"
    ],
    "counts": { // counts of the items in the arrays above
        "valid": 0,
        "invalid": 0,
        "not_found": 0
    }
}
```

## POST /entities/{entity_id}/assets/validation

```shell
curl -X POST https://api.gresb.com/api/v1/entities/{entity_id}/assets/validation \
  -H "Authorization: Bearer $ACCESS_TOKEN" \
  -H "Content-Type: application/json" \
  -d @-
```

In this example, we are going to validate a new asset and an already existing one.
Many required fields are missing for brevity, but assume that one of the assets we want to create is valid and the existing one is missing some required data (tenant_ctrl).
The example response shows what you would expect to get back. In this case one asset is valid and the other one is invalid.

> Request:

```json
{
    "create": [{
        "country": "US",
        "state_province": "DC",
        "city": "Washington, DC",
        //...trimmed for brevity...
        "annual_data": [{
            "year": {reporting_year - 1},
            //...trimmed for brevity...
            },
            {
            "year": {reporting_year - 2},
            //...trimmed for brevity...
            }
        ]
    }],
    "update": [{
        "gresb_asset_id": {asset_id},
        "address": "1600 Pennsylvania Avenue NW",
        "annual_data": [{
            "year": {reporting_year - 1},
            "tenant_ctrl": null
        }]
    }]
}
```

> Response:

```json
{
   "valid": [   
        {
            "gresb_asset_id": null,
            "country": "US",
            "state_province": "DC",
            "city": "Washington, DC",
            "size": 5000.0,
            //...trimmed for brevity...
            "certifications": [
                {
                    //...trimmed for brevity...
                    "_validations": {
                        "errors": {}
                    }
                }
            ],
            "annual_data": [
                {
                    "year": {reporting_year - 1},
                    //...trimmed for brevity...
                    "_validations": {
                        "errors": {}
                    }
                },
                {
                    "year": {reporting_year - 2},
                    //...trimmed for brevity...
                    "_validations": {
                        "errors": {}
                    }
                }
            ],
            "_outliers": [],
            "created_at": null,
            "updated_at": null,
            "_validations": {
                "errors": {}
            }
        }
    ],
    "invalid": [
        {
            "gresb_asset_id": {asset_id_2},
            "country": "US",
            "state_province": "DC",
            "city": "Washington, DC",
            "address": "1600 Pennsylvania Avenue NW",
            "size": 5000.0,
            //...trimmed for brevity...
            "certifications":   [
                {
                    "id": {unique_id},
                    //...trimmed for brevity...
                    "_validations": {
                        "errors": {}
                    }
                },
                {
                    "id": {unique_id_2},
                    //...trimmed for brevity...
                    "_validations": {
                        "errors": {}
                    }
                }
            ],
            "annual_data":  [
                {
                    "year": {reporting_year - 1},
                    //...trimmed for brevity...
                    "_validations": {
                        "errors": {
                            "tenant_ctrl": ["must be true or false"]
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
    ],
    "not_found": [],
    "counts":    {
    "valid": 1,
    "invalid": 1,
    "not_found": 0
    }
}
```
