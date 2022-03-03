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


## GET /entities/{entity_id}/assets

```shell
curl https://api.gresb.com/api/v1/entities/20028/assets \
  -H "Authorization: Bearer $ACCESS_TOKEN"
```

> Response

```json
{
    "gresb_asset_id": 357185,
    "country": "NL",
    "state_province": "North-Holland",
    "city": "Amsterdam",
    "address": "Barbara Strozzilaan",
    "lat": 52.3361502,
    "lng": 4.8852622,
    "partners_id": null,
    "construction_year": 2019,
    "asset_ownership": "100.0",
    "certifications": [
        {
            "id": 10361,
            "certification_id": 585,
            "name": "ABINC Certification/Urban Development and Shopping Centre",
            "level": null,
            "size": 11,
            "_validations": {
                "errors": {}
            }
        },
        {
            "id": 10362,
            "certification_id": 895,
            "name": "Austin Energy/Austin Energy Green Building",
            "level": null,
            "size": 10,
            "_validations": {
                "errors": {}
            }
        }
    ],
    "asset_size": "21.0",
    "annual_data": [
        {
            "year": 2021,
            "asset_size": 21,
            "asset_gav": 1,
            "asset_name": "GRESB Headquarter",
            "asset_vacancy": 10,
            "en_tot_wd": 2,
            "en_tot_we": 2,
            "en_tot_wf": 21,
            "ghg_tot_s3_w": 21,
            "ncmr_status": "Standing Investment",
            "owned_entire_period": true,
            "property_type_code": "OTSS",
            "tenant_ctrl": true,
            "was_abs_haz": 0,
            "was_abs_nhaz": 0,
            "was_data_from": "2021-12-04",
            "was_data_to": "2021-12-24",
            "was_pabs_in": 0,
            "was_pabs_lf": 0,
            "was_pabs_oth": 0,
            "was_pabs_rec": 0,
            "was_pabs_ru": 0,
            "was_pabs_wte": 0,
            "was_pcov": 0,
            "wat_tot_w": 21,
            "whole_building": true
        },
        {
            "year": 2020,
            "asset_size": 21,
            "asset_gav": 1,
            "asset_name": "GRESB Headquarter",
            "asset_vacancy": 10,
            "en_tot_wd": 2,
            "en_tot_we": 2,
            "en_tot_wf": 21,
            "ghg_tot_s3_w": 21,
            "ncmr_status": "Standing Investment",
            "owned_entire_period": true,
            "property_type_code": "OTSS",
            "tenant_ctrl": true,
            "was_abs_haz": 0,
            "was_abs_nhaz": 0,
            "was_data_from": "2020-12-04",
            "was_data_to": "2020-12-24",
            "was_pabs_in": 0,
            "was_pabs_lf": 0,
            "was_pabs_oth": 0,
            "was_pabs_rec": 0,
            "was_pabs_ru": 0,
            "was_pabs_wte": 0,
            "was_pcov": 0,
            "wat_tot_w": 21,
            "whole_building": true
        }
    ],
    "_outliers": [],
    "created_at": "2022-03-03T13:56:20.423Z",
    "updated_at": "2022-03-03T13:56:20.499Z"
}
```

Returns the assets of the entity specified in the URL, along with any annual data (if available). The required
[scope](#api-authorization-oauth-scopes) is `read:assets`.

## GET /entities/{entity_id}/assets/{asset_id}

```shell
curl https://api.gresb.com/api/v1/entities/20028/assets/357185 \
  -H "Authorization: Bearer $ACCESS_TOKEN"
```

> Response

```json
{
    "gresb_asset_id": 357185,
    "country": "NL",
    "state_province": "North-Holland",
    "city": "Amsterdam",
    "address": "Barbara Strozzilaan",
    "lat": 52.3361502,
    "lng": 4.8852622,
    "partners_id": null,
    "construction_year": 2019,
    "asset_ownership": "100.0",
    "certifications": [
        {
            "id": 10361,
            "certification_id": 585,
            "name": "ABINC Certification/Urban Development and Shopping Centre",
            "level": null,
            "size": 11,
            "_validations": {
                "errors": {}
            }
        },
        {
            "id": 10362,
            "certification_id": 895,
            "name": "Austin Energy/Austin Energy Green Building",
            "level": null,
            "size": 10,
            "_validations": {
                "errors": {}
            }
        }
    ],
    "asset_size": "21.0",
    "annual_data": [
        {
            "year": 2021,
            "asset_size": 21,
            "asset_gav": 1,
            "asset_name": "GRESB Headquarter",
            "asset_vacancy": 10,
            "en_tot_wd": 2,
            "en_tot_we": 2,
            "en_tot_wf": 21,
            "ghg_tot_s3_w": 21,
            "ncmr_status": "Standing Investment",
            "owned_entire_period": true,
            "property_type_code": "OTSS",
            "tenant_ctrl": true,
            "was_abs_haz": 0,
            "was_abs_nhaz": 0,
            "was_data_from": "2021-12-04",
            "was_data_to": "2021-12-24",
            "was_pabs_in": 0,
            "was_pabs_lf": 0,
            "was_pabs_oth": 0,
            "was_pabs_rec": 0,
            "was_pabs_ru": 0,
            "was_pabs_wte": 0,
            "was_pcov": 0,
            "wat_tot_w": 21,
            "whole_building": true
        },
        {
            "year": 2020,
            "asset_size": 21,
            "asset_gav": 1,
            "asset_name": "GRESB Headquarter",
            "asset_vacancy": 10,
            "en_tot_wd": 2,
            "en_tot_we": 2,
            "en_tot_wf": 21,
            "ghg_tot_s3_w": 21,
            "ncmr_status": "Standing Investment",
            "owned_entire_period": true,
            "property_type_code": "OTSS",
            "tenant_ctrl": true,
            "was_abs_haz": 0,
            "was_abs_nhaz": 0,
            "was_data_from": "2020-12-04",
            "was_data_to": "2020-12-24",
            "was_pabs_in": 0,
            "was_pabs_lf": 0,
            "was_pabs_oth": 0,
            "was_pabs_rec": 0,
            "was_pabs_ru": 0,
            "was_pabs_wte": 0,
            "was_pcov": 0,
            "wat_tot_w": 21,
            "whole_building": true
        }
    ],
    "_outliers": [],
    "created_at": "2022-03-03T13:56:20.423Z",
    "updated_at": "2022-03-03T13:56:20.499Z"
}
```

Returns the asset specified in the URL, along with its annual data (if available). The required
[scope](#api-authorization-oauth-scopes) is `read:assets`.

## POST /entities/{entity_id}/assets

```shell
curl -X POST https://api.gresb.com/api/v1/entities/20028/assets \
  -H "Authorization: Bearer $ACCESS_TOKEN" \
  -H "Content-Type: application/json" \
  -d @- <<JSON
{
    "country": "NL",
    "state_province": "North-Holland",
    "city": "Amsterdam",
    "address": "Barbara Strozzilaan",
    "construction_year": 2019,
    "asset_ownership": 100,
    "asset_size": 21,
     "certifications": [
    {
        "certification_id": 585,
        "size": 11       
    },
    {
      "certification_id": 895,
        "size":10 
    }
    ],
    "annual_data": [
        {
            "year": 2021,
            "asset_gav":1,
            "asset_revenue":"abc",
            "asset_ownership":100,
            "property_type_code": "OTSS",
            "asset_name": "GRESB Headquarter",
            "owned_entire_period":true,
            "ncmr_status": "Standing Investment",
            "tenant_ctrl":true,
            "asset_vacancy": 10,
            "was_pcov": 0,
            "wat_tot_w": 21,
            "en_tot_wf": 21,
            "en_tot_wd": 2,
            "en_tot_we": 2,
            "ghg_tot_s3_w": 21,
            "was_pabs_lf":0,
            "was_pabs_in":0,
            "was_pabs_ru": 0,
            "was_pabs_wte": 0,
            "was_pabs_rec": 0,
            "was_pabs_oth": 0,
            "was_data_from": "2021-12-04",
            "was_data_to": "2021-12-24",
            "was_abs_haz": 0,
            "was_abs_nhaz": 0
        },
         {
            "year": 2020,
            "asset_gav":1,
            "asset_ownership":100,
            "asset_revenue":0,
            "property_type_code": "OTSS",
            "asset_name": "GRESB Headquarter",
            "owned_entire_period":true,
            "ncmr_status": "Standing Investment",
            "tenant_ctrl":true,
            "asset_vacancy": 10,
            "was_pcov": 0,
            "wat_tot_w": 21,
            "en_tot_wf": 21,
            "en_tot_wd": 2,
            "en_tot_we": 2,
            "ghg_tot_s3_w": 21,
            "was_pabs_lf":0,
            "was_pabs_in":0,
            "was_pabs_ru": 0,
            "was_pabs_wte": 0,
            "was_pabs_rec": 0,
            "was_pabs_oth": 0,
            "was_data_from": "2020-12-04",
            "was_data_to": "2020-12-24",
            "was_abs_haz": 0,
            "was_abs_nhaz": 0
        }
    ]
}
        
    

JSON
```

> Response

```json
{
    "gresb_asset_id": 357185,
    "country": "NL",
    "state_province": "North-Holland",
    "city": "Amsterdam",
    "address": "Barbara Strozzilaan",
    "lat": 52.3361502,
    "lng": 4.8852622,
    "partners_id": null,
    "construction_year": 2019,
    "asset_ownership": "100.0",
    "certifications": [
        {
            "id": 10361,
            "certification_id": 585,
            "name": "ABINC Certification/Urban Development and Shopping Centre",
            "level": null,
            "size": 11,
            "_validations": {
                "errors": {}
            }
        },
        {
            "id": 10362,
            "certification_id": 895,
            "name": "Austin Energy/Austin Energy Green Building",
            "level": null,
            "size": 10,
            "_validations": {
                "errors": {}
            }
        }
    ],
    "asset_size": "21.0",
    "annual_data": [
        {
            "year": 2021,
            "asset_size": 21,
            "asset_gav": 1,
            "asset_name": "GRESB Headquarter",
            "asset_vacancy": 10,
            "en_tot_wd": 2,
            "en_tot_we": 2,
            "en_tot_wf": 21,
            "ghg_tot_s3_w": 21,
            "ncmr_status": "Standing Investment",
            "owned_entire_period": true,
            "property_type_code": "OTSS",
            "tenant_ctrl": true,
            "was_abs_haz": 0,
            "was_abs_nhaz": 0,
            "was_data_from": "2021-12-04",
            "was_data_to": "2021-12-24",
            "was_pabs_in": 0,
            "was_pabs_lf": 0,
            "was_pabs_oth": 0,
            "was_pabs_rec": 0,
            "was_pabs_ru": 0,
            "was_pabs_wte": 0,
            "was_pcov": 0,
            "wat_tot_w": 21,
            "whole_building": true,
            "_validations": {
                "errors": {}
            }
        },
        {
            "year": 2020,
            "asset_size": 21,
            "asset_gav": 1,
            "asset_name": "GRESB Headquarter",
            "asset_vacancy": 10,
            "en_tot_wd": 2,
            "en_tot_we": 2,
            "en_tot_wf": 21,
            "ghg_tot_s3_w": 21,
            "ncmr_status": "Standing Investment",
            "owned_entire_period": true,
            "property_type_code": "OTSS",
            "tenant_ctrl": true,
            "was_abs_haz": 0,
            "was_abs_nhaz": 0,
            "was_data_from": "2020-12-04",
            "was_data_to": "2020-12-24",
            "was_pabs_in": 0,
            "was_pabs_lf": 0,
            "was_pabs_oth": 0,
            "was_pabs_rec": 0,
            "was_pabs_ru": 0,
            "was_pabs_wte": 0,
            "was_pcov": 0,
            "wat_tot_w": 21,
            "whole_building": true,
            "_validations": {
                "errors": {}
            }
        }
    ],
    "_outliers": [],
    "created_at": "2022-03-03T13:56:20.423Z",
    "updated_at": "2022-03-03T13:56:20.499Z",
    "_validations": {
        "errors": {}
    }
}
```

Creates a new asset for the specified entity in the URL. Returns the created
asset, along with any validation errors and warnings. The required
[scope](#api-authorization-oauth-scopes) is `write:assets`.

The `year` in _annual_data_ is required along with `asset_size`,`property_type_code` and `asset_name`.
If no record for that year is available, a new one will be created. Old records will be updated but won't have any effect on past surveys and rankings.
<strong>You can update data for up to 5 years prior to the Assessment year.</strong>




For certifications we require the _certification_id_ and the _size_ (the size of your asset that received the certification). If a certification is divided in multiple _levels_, we also require the level.

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
curl -X PATCH https://api.gresb.com/api/v1/entities/20028/assets/357185\
  -H "Authorization: Bearer $ACCESS_TOKEN" \
  -H "Content-Type: application/json" \
  -d @- <<JSON
 {
    "annual_data": [
      {
         "year": 2021,
          "asset_gav":10               
      }
    ]}
JSON
```

> Response

```json
{
    "gresb_asset_id": 357185,
    "country": "NL",
    "state_province": "North-Holland",
    "city": "Amsterdam",
    "address": "Barbara Strozzilaan",
    "lat": 52.3361502,
    "lng": 4.8852622,
    "partners_id": null,
    "construction_year": 2019,
    "asset_ownership": "100.0",
    "certifications": [
        {
            "id": 10361,
            "certification_id": 585,
            "name": "ABINC Certification/Urban Development and Shopping Centre",
            "level": null,
            "size": 11,
            "_validations": {
                "errors": {}
            }
        },
        {
            "id": 10362,
            "certification_id": 895,
            "name": "Austin Energy/Austin Energy Green Building",
            "level": null,
            "size": 10,
            "_validations": {
                "errors": {}
            }
        }
    ],
    "asset_size": "21.0",
    "annual_data": [
        {
            "year": 2021,
            "asset_size": 21,
            "asset_gav": 10,
            "asset_name": "GRESB Headquarter",
            "asset_vacancy": 10,
            "en_tot_wd": 2,
            "en_tot_we": 2,
            "en_tot_wf": 21,
            "ghg_tot_s3_w": 21,
            "ncmr_status": "Standing Investment",
            "owned_entire_period": true,
            "property_type_code": "OTSS",
            "tenant_ctrl": true,
            "was_abs_haz": 0,
            "was_abs_nhaz": 0,
            "was_data_from": "2021-12-04",
            "was_data_to": "2021-12-24",
            "was_pabs_in": 0,
            "was_pabs_lf": 0,
            "was_pabs_oth": 0,
            "was_pabs_rec": 0,
            "was_pabs_ru": 0,
            "was_pabs_wte": 0,
            "was_pcov": 0,
            "wat_tot_w": 21,
            "whole_building": true,
            "_validations": {
                "errors": {}
            }
        },
        {
            "year": 2020,
            "asset_size": 21,
            "asset_gav": 1,
            "asset_name": "GRESB Headquarter",
            "asset_vacancy": 10,
            "en_tot_wd": 2,
            "en_tot_we": 2,
            "en_tot_wf": 21,
            "ghg_tot_s3_w": 21,
            "ncmr_status": "Standing Investment",
            "owned_entire_period": true,
            "property_type_code": "OTSS",
            "tenant_ctrl": true,
            "was_abs_haz": 0,
            "was_abs_nhaz": 0,
            "was_data_from": "2020-12-04",
            "was_data_to": "2020-12-24",
            "was_pabs_in": 0,
            "was_pabs_lf": 0,
            "was_pabs_oth": 0,
            "was_pabs_rec": 0,
            "was_pabs_ru": 0,
            "was_pabs_wte": 0,
            "was_pcov": 0,
            "wat_tot_w": 21,
            "whole_building": true,
            "_validations": {
                "errors": {}
            }
        }
    ],
    "_outliers": [],
    "created_at": "2022-03-03T13:56:20.423Z",
    "updated_at": "2022-03-03T14:14:36.596Z",
    "_validations": {
        "errors": {}
    }
}```

Updates the asset specified in the URL. This endpoint allows partial updates,
meaning you only need to provide the changes you want to apply and they are
merged with the existing asset fields. To clear an existing value, you need to
explicitly set it to `null`. The changed asset is validated and is only saved
if there are no validation errors. In all cases, you get a response with all
the asset fields and any validation errors/warnings. The required
[scope](#api-authorization-oauth-scopes) is `write:assets`.

In the example shown on the right, the update has failed due to the request
clearing a required field (`asset_size`).

For a complete list of fields, and their meaning, see the
[Data Dictionary](#data-dictionary).

To bulk-update more than a few assets, please submit a
[Batch Operation](#batch-asset-operations).

<aside class="notice">
<strong>Create certifications</strong>
</aside>
Certification records can be created by sending the `certification_id`, `level`, and `size` with the `certifications` array. The `certification_id` in constraint with the `level` is unique for each asset.
The response includes a unique `id`, which is the identifier for the particular association record created.
**Data is not overwritten by sending another certification**. If the certification data does not include an `id`, we always try to create a new association.

<aside class="notice">
<strong>Update certifications</strong>
</aside>

The `id` of this particular record is needed to update the child record. If you don't want to update or add more certifications,
you can simply not send the `certifications` key in the request.
To update an existing certification record, provide the `id`. For example, to update the size of a certification, send the following data:
`certifications: [{ "id": 63, "size": 500.12 }]`

<aside class="notice">
<strong>Remove certifications</strong>
</aside>
To remove certifications you need to provide the id and the key <em>'_destroy'</em>.
`certifications: [{ "id": 63, "_destroy": "1" }]`

## DELETE /entities/{entity_id}/assets/{asset_id}

```shell
curl -X DELETE https://api.gresb.com/api/v1/entities/20028/assets/357185 \
  -H "Authorization: Bearer $ACCESS_TOKEN"
```

> Response

```json
{
    "gresb_asset_id": 357185,
    "country": "NL",
    "state_province": "North-Holland",
    "city": "Amsterdam",
    "address": "Barbara Strozzilaan",
    "lat": 52.3361502,
    "lng": 4.8852622,
    "partners_id": null,
    "construction_year": 2019,
    "asset_ownership": "100.0",
    "certifications": [],
    "asset_size": "21.0",
    "annual_data": [],
    "_outliers": [],
    "created_at": "2022-03-03T13:56:20.423Z",
    "updated_at": "2022-03-03T14:17:12.514Z"
}
```

Deletes the asset specified in the URL. Returns the deleted asset if the
operation is successful. The required [scope](#api-authorization-oauth-scopes)
is `write:assets`.

## POST /entities/{entity_id}/asset_spreadsheet_export

```shell
curl -X POST https://api.gresb.com/api/v1/entities/5028/asset_spreadsheet_export \
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
