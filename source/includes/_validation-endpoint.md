# Validation Endpoint

> Request format

```javascript
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

The API offers an endpoint specifically to **only validate** (multiple) assets.
The request format is similar, all asset representations have to be enclosed in an
array and are assigned to the fields `create` or `update`.
The `update` array requires assets with an `gresb_asset_id`.



> Response format

```javascript
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

<aside class="notice">
  Please note, the examples in this sections are not valid JSON. For brevity,
  some fields have been removed. In order to run them, you need to take out the
  comment lines and add the fields you need. Refer to the <a
  href="#data-dictionary">data dictionary</a> for a detailed explanation of all
  available fields.
</aside>

## POST /entities/{entity_id}/assets/validation

```shell
curl -X POST https://api.gresb.com/api/v1/entities/16066/assets/validation \
  -H "Authorization: Bearer $ACCESS_TOKEN" \
  -H "Content-Type: application/json" \
  -d @- <<JSON
{
  "create": [
    {
      "city": "Borsele",
      "country": "NL",
      "annual_data": [
        {
          "year": 2018,
          "property_type_code": "OTPI",
          // ... trimmed for brevity ...
        },
        {
          "year": 2017,
          // ... trimmed for brevity ...
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
          "asset_name": ""
        }
      ]
    }
  ],
}
JSON
```

> Response

```javascript
{
  "valid": [
    {
      "city": "Borsele",
      "country": "NL",
      "annual_data": [
        {
          "year": 2018,
          "property_type_code": "OTPI",
          // ... trimmed for brevity ...
        },
        {
          "year": 2017,
          // ... trimmed for brevity ...
        }
      ],
      "_validations": {
           "errors": {}
       }
    }
  ],
  "invalid": [
      {
        "gresb_asset_id": 369076,
        // ... trimmed for brevity ...
        "annual_data": [
          {
            "year": 2018,
            "property_type_code": "OTPI",
            // ... trimmed for brevity ...
            "_validations": {
              "errors": {
                "asset_name": {
                  "can't be blank"
                }
              }
            }
          }
        ]
      }
  ]
  "counts": {
      "valid": 1,
      "invalid": 1,
      "not_found": 0
  }
}
```

In this example, we are going to validate a new asset and an already existing one.
Many required fields are missing for brevity, but assume that one of
the assets we want to create is valid and the existing one is missing some required data (asset_name).
The example response shows what you would expect to get back. In this case one asset is valid and the other one is invalid.
