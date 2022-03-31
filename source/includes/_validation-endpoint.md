# Validation Endpoint

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

The API offers an endpoint specifically to **only validate** (multiple) assets.
The request format is similar, all asset representations have to be enclosed in an
array and are assigned to the fields `create` or `update`.
The `update` array requires assets with an `gresb_asset_id`.



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
  -d @-
```
> Request:

```json
{
    "create": [{
            "country": "US",
            "state_province": "DC",
            "city": "Washington, DC",
            //...trimmer for brevity...
    }],
            "annual_data": [{
                    "year": 2021,
                    //...trimmer for brevity...
                },
                {
                    "year": 2020,
                    //...trimmer for brevity...
                },
                {
                    "year": 2019,
                    //...trimmer for brevity...
                }

            ]
        }

    ],

    "update": [{
            "gresb_asset_id": 357261,
            "address": "1775 Lange Viestraat",
            "annual_data": [{
                "year": 2021,
                "asset_name": "Name changed in 2021"
            }]
        }

    ]

}
```

> Response:

```json
{
   "valid": [   {
      "gresb_asset_id": null,
      "country": "US",
      "state_province": "DC",
      "city": "Washington, DC",
      //...trimmer for brevity...
      "certifications":       [
                  {
            //...trimmer for brevity...
            "_validations": {"errors": {}}
         },
                  {
            //...trimmer for brevity...
            "_validations": {"errors": {}}
         }
      ],
      "asset_size": "5000.0",
      "annual_data":       [
                  {
            "year": 2021,
            //...trimmer for brevity...
            "_validations": {"errors": {}}
         },
                  {
            "year": 2020,
            //...trimmer for brevity...
            "_validations": {"errors": {}}
         },
                  {
            "year": 2019,
            //...trimmer for brevity...
            "_validations": {"errors": {}}
         }
      ],
      "_outliers": [],
      "created_at": null,
      "updated_at": null,
      "_validations": {"errors": {}}
   }],
   "invalid": [   {
      "gresb_asset_id": 357261,
      "country": "US",
      "state_province": "DC",
      "city": "Washington, DC",
      "address": "1775 Lange Viestraat",
      //...trimmer for brevity...
      "certifications":       [
                  {
            "id": 10476,
            "certification_id": 598,
            //...trimmer for brevity...
            "_validations": {"errors": {}}
         },
                  {
            "id": 10477,
            "certification_id": 598,
            //...trimmer for brevity...
            "_validations": {"errors": {}}
         }
      ],
      "asset_size": "5000.0",
      "annual_data":       [
                  {
            "year": 2021,
            //...trimmer for brevity...
            "_validations": {"errors": {}}
         },
                  {
            "year": 2021,
            "asset_size": 5000,
            "asset_name": "Name changed in 2021",
            "owned_entire_period": false,
            "_validations": {"errors": {"tenant_ctrl": ["must be true or false"]}}
         },
                  {
            "year": 2019,
           //...trimmer for brevity...
            "_validations": {"errors": {}}
         },
                  {
            "year": 2018,
            //...trimmer for brevity...
            "_validations": {"errors": {}}
         },
                  {
            "year": 2017,
            //...trimmer for brevity...
            "_validations": {"errors": {}}
         }
      ],
      "_outliers": [],
      "created_at": "2022-03-09T08:12:59.981Z",
      "updated_at": "2022-03-09T08:13:00.227Z",
      "_validations": {"errors": {}}
   }],
   "not_found": [],
   "counts":    {
      "valid": 1,
      "invalid": 1,
      "not_found": 0
   }
}```

In this example, we are going to validate a new asset and an already existing one.
Many required fields are missing for brevity, but assume that one of
the assets we want to create is valid and the existing one is missing some required data (asset_name).
The example response shows what you would expect to get back. In this case one asset is valid and the other one is invalid.
