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
a batch.

## GET /entities/{entity_id}/assets

```shell
curl https://api.gresb.com/api/v1/entities/5028/assets \
  -H "Authorization: Bearer $ACCESS_TOKEN"
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
        "certifications": [
          {
            "id": 5913,
            "certification_id": 901,
            "name": "Sunshine Energy A",
            "level": "Premium",
            "size": "415.7"          
          }
        ],
        "annual_data": [
          {
              "year": 2019,
              "asset_name": "GRESB HQ",
              "asset_size": 500,
              "property_type_code": "OFF",
              "asset_own": 12                
          },
          {
              "year": 2018,
              "asset_name": "GRESB HQ",
              "asset_size": 450,
              "property_type_code": "OFF",
              "asset_own": 12                
          },
          {
              "year": 2017,
              "asset_name": "GRESB Headquarter",
              "asset_size": 425,
              "property_type_code": "OFF",
              "asset_own": 12                
          }
        ],
        "created_at": "2018-01-15T11:07:13.436Z",
        "updated_at": "2020-01-24T12:05:11.456Z"
    }
]
```

Returns the assets of the entity specified in the URL, along with any annual data (if available). The required
[scope](#api-authorization-oauth-scopes) is `read:assets`.

## GET /entities/{entity_id}/assets/{asset_id}

```shell
curl https://api.gresb.com/api/v1/entities/5028/assets/442 \
  -H "Authorization: Bearer $ACCESS_TOKEN"
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
    "certifications": [
      {
        "id": 5913,
        "certification_id": 901,
        "name": "Sunshine Energy A",
        "level": "Premium",
        "size": "415.7"          
      }
    ],
    "annual_data": [
      {
          "year": 2019,
          "asset_name": "GRESB HQ",
          "asset_size": 500,
          "property_type_code": "OFF",
          "asset_own": 12                
      },
      {
          "year": 2018,
          "asset_name": "GRESB HQ",
          "asset_size": 450,
          "property_type_code": "OFF",
          "asset_own": 12                
      },
      {
          "year": 2017,
          "asset_name": "GRESB Headquarter",
          "asset_size": 425,
          "property_type_code": "OFF",
          "asset_own": 12                
      }
    ],
    "created_at": "2018-01-15T11:07:13.436Z",
    "updated_at": "2020-01-24T12:05:11.456Z"
}
```

Returns the asset specified in the URL, along with its annual data (if available). The required
[scope](#api-authorization-oauth-scopes) is `read:assets`.

## POST /entities/{entity_id}/assets

```shell
curl -X POST https://api.gresb.com/api/v1/entities/5028/assets \
  -H "Authorization: Bearer $ACCESS_TOKEN" \
  -H "Content-Type: application/json" \
  -d @- <<JSON
{
    "country": "US",
    "state_province": "DC",
    "city": "Washington, DC",
    "address": "1600 Pennsylvania Avenue NW",
    "construction_year": 1800,
    "partners_id": "USGOV_DC456123G",
    "certifications": [
      {
        "certification_id": 901,
        "name": "Sunshine Energy A",
        "level": "Premium",
        "size": "500"          
      }
    ],
    "annual_data": [
        {
            "year": 2019,
            "asset_name": "The White House",
            "whole_building": true,
            "asset_size": 500,
            "property_type_code": "OFF",
            "en_tot_lc_te": 147.12,
            "wat_abs_lc_t": 97.1748,
            "asset_own": 12
        },
        {
            "year": 2018,
            "asset_name": "The White House",
            "asset_size": 500,
            "property_type_code": "OFF",
            "asset_size": 500,
            "en_tot_lc_te": 112.4,
            "wat_abs_lc_t": 75.08,

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
    "certifications": [
      {
        "id": 62,
        "certification_id": 901,
        "name": "Sunshine Energy A",
        "level": "Premium",
        "size": "500"          
      }
    ],
    "annual_data": [
        {
          "year": 2019,
          "asset_name": "The White House",
          "whole_building": true,
          "asset_size": 500,
          "property_type_code": "OFF",
          "en_tot_lc_te": 147.12,
          "wat_abs_lc_t": 97.1748,
          "asset_own": 12
        },
        {
          "year": 2018,
          "asset_name": "The White House",
          "asset_size": 500,
          "property_type_code": "OFF",
          "asset_size": 500,
          "en_tot_lc_te": 112.4,
          "wat_abs_lc_t": 75.08,
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

The `year` in _annual_data_ is required along with `asset_size`,`property_type_code` and `asset_name`. You can pass data for the past 4 years. If no record for that year is available, a new one will be created. Old records will be updated but won't have any effect on past surveys and rankings.

For certifications we require the _certification_id_ and the _size_ (the size of your asset that received the certification). In case a certification can have multiple _levels_, we also require the value. 

<aside class="notice">
  Notice the <code>gresb_asset_id</code> in the response. This is a unique ID
  generated from the API, if the asset is complete (no validation errors).
  It's highly recommended to keep this ID in your database, as it's the only
  way to identify the new asset. You don't have to provide it in the response,
  in fact it is ignored, if you do.
</aside>

For a complete list of fields, and their meaning, see the
[Data Dictionary](#data-dictionary).

To bulk-create more than a few assets, please submit a
[Batch Operation](#batch-asset-operations).

## PATCH /entities/{entity_id}/assets/{asset_id}

```shell
curl -X PATCH https://api.gresb.com/api/v1/entities/5028/assets/442 \
  -H "Authorization: Bearer $ACCESS_TOKEN" \
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
          "year": 2019,
          "asset_name": "GRESB HQ",
          "asset_size": 500,
          "property_type_code": "OFF",
          "asset_own": 12                
      },
      {
          "year": 2018,
          "asset_name": "GRESB HQ",
          "asset_size": 450,
          "property_type_code": "OFF",
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
            "asset_name": "GRESB Headquarter",
            "asset_size": 425,
            "property_type_code": "OFF",
            "asset_own": 12,        
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
[Data Dictionary](#data-dictionary).

To bulk-update more than a few assets, please submit a
[Batch Operation](#batch-asset-operations).

<aside class="notice">
  To <strong>remove certifications</strong> you need to provide the ids of the certification_records within an array for the key <em>delete_certifications</em>.
</aside>

  `{ "delete_certifications": [62, 117] }`


## DELETE /entities/{entity_id}/assets/{asset_id}

```shell
curl -X DELETE https://api.gresb.com/api/v1/entities/5028/assets/442 \
  -H "Authorization: Bearer $ACCESS_TOKEN"
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
          "year": 2019,
          "asset_name": "GRESB HQ",
          "asset_size": 500,
          "property_type_code": "OFF",
          "asset_own": 12                
      },
      {
          "year": 2018,
          "asset_name": "GRESB HQ",
          "asset_size": 450,
          "property_type_code": "OFF",
          "asset_own": 12                
      },
      {
          "year": 2017,
          "asset_name": "GRESB Headquarter",
          "asset_size": 425,
          "property_type_code": "OFF",
          "asset_own": 12                
      }
    ],
    "created_at": "2018-01-15T11:07:13.436Z",
    "updated_at": "2020-01-24T12:05:11.456Z"
}
```

Deletes the asset specified in the URL. Returns the deleted asset if the
operation is successful. The required [scope](#api-authorization-oauth-scopes)
is `write:assets`.

## POST /entities/{entity_id}/asset_spreadsheet_export

```shell
curl -X POST https://api.gresb.com/api/v0/entities/5028/asset_spreadsheet_export \
  -H "Authorization: Bearer $ACCESS_TOKEN" \
  -d "callback_url=https://your.callback.url"
```

> Callback request

```json
{
    "url": "https://gresb-prd-private.s3.amazonaws.com/production/asset-excels/..."
}
```

Exports all the entity's assets to a XSLX spreadsheet and sends a POST request to the provided callback URL containing the file URL. It will be accessible for 15 minutes.
