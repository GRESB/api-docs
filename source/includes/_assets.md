# Asset Data

Asset data can be posted via the `asset_level_data` endpoint. The data consists
of building characteristics and annual data. Building characteristics are
constant over time, whereas annual data changes annually. Some data is only
valid for the most current of the two reporting years, other data is valid for
both years.

**Building characteristics:**

  - gresb asset identifier
  - location specifics (e.g. city, address, latitude)
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

You may submit data for any number of buildings for your user, in one or more
of the aforementioned sections. The respondent may also provide data on other
assets or for the same assets but in different sections. The data you access
through the API is not specific to your application and include data on the
respondent's other assets or sections. In other words, you can access assets
from a common pool - as long as the assets are part of the same entity. It is
the responsibility of the respondent to make sure that data submitted from
multiple API partners does not conflict with each other. This API is designed
to meet the needs of applications that upload data to GRESB in real-time or as
a batch and treats the entire dataset as a single resource.

## GET /entities/{entity_id}/assets

```shell
curl https://api.gresb.com/api/v0/entities/5028/assets -H "Authorization: Bearer $TOKEN"
```

> Response

```json
[
    {
        "gresb_asset_id": 442,
        "country": "NL",
        "state_province": "Noord-Holland",
        "city": "Amsterdam",
        "address": null,
        "lat": null,
        "lng": null,
        "construction_year": 2000,
        "partners_id": "GRB_OFF_357891Z",
        "annual_data": [
            {
                "year": 2018,
                "asset_name": "GRESB HQ",
                "directly_managed": false,
                "asset_size": 500,
                "property_type_code": "OFF",
                "whole_building": true,
                "new_construction": false,
                "major_renovation": false,
                "dc_change_energy": false,
                "dc_change_water": false,
                "asset_own": 12
            },
            {
                "year": 2017,
                "new_construction": false,
                "major_renovation": false,
                "asset_own": 7
            }
        ],
        "created_at": "2019-01-15T11:07:13.436Z",
        "updated_at": "2019-01-15T11:07:13.436Z"
    }
]
```

Returns the assets of the entity specified in the URL, along with annual data
for the last 2 years (if available). The required
[scope](#api-authorization-oauth-scopes) is `read:assets`.

## GET /entities/{entity_id}/assets/{asset_id}

```shell
curl https://api.gresb.com/api/v0/entities/5028/assets/442 -H "Authorization: Bearer $TOKEN"
```

> Response

```json
{
    "gresb_asset_id": 442,
    "country": "NL",
    "state_province": "Noord-Holland",
    "city": "Amsterdam",
    "address": null,
    "lat": null,
    "lng": null,
    "construction_year": 2000,
    "partners_id": "GRB_OFF_357891Z",
    "annual_data": [
        {
            "year": 2018,
            "asset_name": "GRESB HQ",
            "directly_managed": false,
            "asset_size": 500,
            "property_type_code": "OFF",
            "whole_building": true,
            "new_construction": false,
            "major_renovation": false,
            "dc_change_energy": false,
            "dc_change_water": false,
            "asset_own": 12
        },
        {
            "year": 2017,
            "new_construction": false,
            "major_renovation": false,
            "asset_own": 7
        }
    ],
    "created_at": "2019-01-15T11:07:13.436Z",
    "updated_at": "2019-01-15T11:07:13.436Z"
}
```

Returns the asset specified in the URL, along with its annual data for the
last 2 years (if available). The required
[scope](#api-authorization-oauth-scopes) is `read:assets`.

## POST /entities/{entity_id}/assets

```shell
curl -X POST https://api.gresb.com/api/v0/entities/5028/assets \
-H "Authorization: Bearer $TOKEN" \
-H "Content-Type: application/json" \
-d @- <<JSON
{
    "country": "US",
    "state_province": "DC",
    "city": "Washington, DC",
    "address": "1600 Pennsylvania Avenue NW",
    "construction_year": 1800,
    "partners_id": "USGOV_DC456123G",
    "annual_data": [
        {
            "year": 2018,
            "asset_name": "The White House",
            "directly_managed": false,
            "whole_building": true,
            "asset_size": 500,
            "property_type_code": "OFF",
            "new_construction": false,
            "major_renovation": false,
            "dc_change_energy": false,
            "dc_change_water": false,
            "asset_own": 12
        },
        {
            "year": 2017,
            "asset_own": 7,
            "new_construction": false,
            "major_renovation": false
        }
    ]
}
JSON
```

> Response

```json
{
    "gresb_asset_id": 445,
    "country": "US",
    "state_province": "DC",
    "city": "Washington, DC",
    "address": "1600 Pennsylvania Avenue NW",
    "construction_year": 1800,
    "partners_id": "USGOV_DC456123G",
    "annual_data": [
        {
            "year": 2018,
            "asset_name": "The White House",
            "directly_managed": false,
            "whole_building": true,
            "asset_size": 500,
            "property_type_code": "OFF",
            "new_construction": false,
            "major_renovation": false,
            "dc_change_energy": false,
            "dc_change_water": false,
            "asset_own": 12,
            "_validations": {
                "errors": {}
            }
        },
        {
            "year": 2017,
            "asset_own": 7,
            "new_construction": false,
            "major_renovation": false,
            "_validations": {
                "errors": {}
            }
        }
    ],
    "_validations": {
        "errors": {}
    }
}
```

Creates a new asset for the specified entity in the URL. Returns the created
asset, along with any validation errors and warnings. The required
[scope](#api-authorization-oauth-scopes) is `write:assets`.

<aside class="notice">
  Notice the <code>gresb_asset_id</code> in the response. This is a unique ID
  generated from the API, if the asset is complete (no validation errors).
  It's highly recommended to keep this ID in your database, as it's the only
  way to identify the new asset. You don't have to provide it in the response,
  in fact it is ignored, if you do.
</aside>

For a complete list of fields, and their meaning, see the
[Data Dictionary](#data-dictionary). For a complete list of the validations,
refer to the [Errors & Warnings](#errors-amp-warnings).

To bulk-create more than a few assets, please submit a
[Batch Operation](#batch-asset-operations).

## PATCH /entities/{entity_id}/assets/{asset_id}

```shell
curl -X PATCH https://api.gresb.com/api/v0/entities/5028/assets/442 \
-H "Authorization: Bearer $TOKEN" \
-H "Content-Type: application/json" \
-d @- <<JSON
{
    "lat": 52.3364617,
    "lng": 4.8849911,
    "annual_data": [
        {
            "year": 2018,
            "asset_own": null
        }
    ]
}
JSON
```

> Response

```json
{
    "gresb_asset_id": 442,
    "country": "NL",
    "state_province": "Noord-Holland",
    "city": "Amsterdam",
    "address": null,
    "lat": 52.3364617,
    "lng": 4.8849911,
    "construction_year": 2000,
    "partners_id": "GRB_OFF_357891Z",
    "annual_data": [
        {
            "year": 2018,
            "asset_name": "GRESB HQ",
            "directly_managed": false,
            "asset_size": 500,
            "property_type_code": "OFF",
            "whole_building": true,
            "new_construction": false,
            "major_renovation": false,
            "dc_change_energy": false,
            "dc_change_water": false,
            "_validations": {
                "errors": {
                    "asset_own": [
                        "can't be blank"
                    ]
                }
            }
        },
        {
            "year": 2017,
            "new_construction": false,
            "major_renovation": false,
            "asset_own": 7,
            "_validations": {
                "errors": {}
            }
        }
    ],
    "_validations": {
        "errors": {}
    }
}
```

Updates the asset specified in the URL. This endpoint allows partial updates,
meaning you only need to provide the changes you want to apply and they are
merged with the existing asset fields. To clear an existing value, you need to
explicitly set it to `null`. The changed asset is validated and is only saved
if there are no validation errors. In all cases, you get a response with all
the asset fields and any validation errors/warnings. The required
[scope](#api-authorization-oauth-scopes) is `write:assets`.

In the example shown on the right, the update has failed due to the request
clearing a required field (`asset_own`).

For a complete list of fields, and their meaning, see the
[Data Dictionary](#data-dictionary). For a complete list of the validations,
refer to the [Errors & Warnings](#errors-amp-warnings).

To bulk-update more than a few assets, please submit a
[Batch Operation](#batch-asset-operations).

## DELETE /entities/{entity_id}/assets/{asset_id}

```shell
curl -X DELETE https://api.gresb.com/api/v0/entities/5028/assets/442 \
  -H "Authorization: Bearer $TOKEN"
```

> Response

```json
{
    "gresb_asset_id": 442,
    "country": "NL",
    "state_province": "Noord-Holland",
    "city": "Amsterdam",
    "address": null,
    "lat": null,
    "lng": null,
    "construction_year": 2000,
    "partners_id": "GRB_OFF_357891Z",
    "annual_data": [
        {
            "year": 2018,
            "asset_name": "GRESB HQ",
            "directly_managed": false,
            "asset_size": 500,
            "property_type_code": "OFF",
            "whole_building": true,
            "new_construction": false,
            "major_renovation": false,
            "dc_change_energy": false,
            "dc_change_water": false,
            "asset_own": 12
        },
        {
            "year": 2017,
            "new_construction": false,
            "major_renovation": false,
            "asset_own": 7
        }
    ],
    "created_at": "2019-02-06T11:07:13.436Z",
    "updated_at": "2019-02-06T11:07:13.436Z"
}
```

Deletes the asset specified in the URL. Returns the deleted asset if the
operation is successful. The required [scope](#api-authorization-oauth-scopes)
is `write:assets`.

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

## POST /entities/{entity_id}/assets/batches

```shell
curl -X POST https://api.gresb.com/api/v0/entities/5028/assets/batches \
-H "Authorization: Bearer $TOKEN" \
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
