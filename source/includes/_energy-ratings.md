# Asset Energy Ratings


We provide a list of available energy ratings that can be assigned to an asset.

## GET /energy_ratings

```shell
curl https://api.gresb.com/api/v1/energy_ratings
```

> Response:

```json
[
  {
      "id": 66,
      "name": "Arc Energy Performance Certificate"
   },
      {
      "id": 67,
      "name": "Arc Energy Performance Score"
   },
      {
      "id": 68,
      "name": "BBC Effinergie"
   }
   // ... trimmed for brevity ...
]
```

### Create, Update and Remove Energy Ratings

Just like building certifications, it is possible to report multiple energy ratings per asset. Encapsulate all the energy ratings in the `energy_ratings` array and submit to `/entities/{entity_id}/assets/{asset_id}`. Each energy rating has to have an `energy_rating_id` and a `size` specified in order to be valid.

A unique ID will be returned when the energy rating is created for the first time. Returned ID can then be referenced to update and delete the record: `energy_ratings: [{ "id": 123456, "_destroy": "1" }]`

```shell
curl https://api.gresb.com/api/v1/entities/{{entity_id}}/assets/{{asset_id}}
```
> Request:

```json
{
    "energy_ratings": [
        {
        "energy_rating_id": 57,
        "size": 123
        },
        {
        "energy_rating_id": 66,
        "size": 456
        }
    ]
}
```

> Response:

```json
[
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
        "asset_ownership": 55,
        "certifications":    [
            {
            "id": {unique_id},
            "certification_id": 598,
            "name": "BCA Green Mark/Existing Buildings",
            "level": "Platinum",
            "size": 230,
            "_validations": {"errors": {}}
            }
        ],
        "energy_ratings": [
            {
            "id": {unique_id},
            "energy_rating_id": 57,
            "size": 123,
            "_validations": {"errors": {}}
            },
            {
            "id": {unique_id},
            "energy_rating_id": 66,
            "size": 456,
            "_validations": {"errors": {}}
            }
        ],
        "asset_size": 5000.0,
        "annual_data":    [
            {
                "year": {reporting_year - 1},
                "asset_size": 5000,
                "asset_name": "API Created Asset",
                "en_tot_wd": 4000,
                "en_tot_we": 900,
                "en_tot_wf": 100,
                "ghg_tot_s3_w": 5000,
                "ncmr_status": "Standing Investment",
                "owned_entire_period": true,
                "property_type_code": "HTL",
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
    }
```
