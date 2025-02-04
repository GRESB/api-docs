# Asset Certifications

We provide a list of available building certifications that can be assigned to an asset.
Some certifications have various levels available. In those cases, the `level` field is mandatory for an asset.

## GET /certifications

```shell
curl https://api.gresb.com/api/v1/certifications
```

> Response:

```json
[
  {
      "id": 585,
      "name": "ABINC Certification/Urban Development and Shopping Centre",
      "country": "JP",
      "status": "both"
   },
      {
      "id": 895,
      "name": "Austin Energy/Austin Energy Green Building",
      "status": "both"
   },
      {
      "id": 598,
      "name": "BCA Green Mark/Existing Buildings",
      "levels":       [
         "Platinum",
         "GoldPlus",
         "Gold",
         "Certified"
      ],
      "country": "SG",
      "status": "operational"
   }
   // ... trimmed for brevity ...
]
```

### Create certifications

Certification records can be created by sending the `certification_id`, `level` (when relevant), `size` and `year` within the `certifications` array. The `certification_id` in constraint with the `level`  and `year` is unique for each asset.

The response includes a unique `id`, which is the identifier for the particular association record created. If `id` is not returned, then the record is not created.

**Data is not overwritten by sending another certification**. If the certification data does not include an `id`, we always try to create a new association.

```shell
curl https://api.gresb.com/api/v1/entities/{{entity_id}}/assets/{{asset_id}}
```

> Request:

```json
{
    "certifications": [
        {
            "certification_id": 999,
            "level": "GoldPlus",
            "size": 123,
            "year": 2017
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
        "size": 5000.0,
        "ownership": 55,
        "certifications":    [
            {
                "id": null,
                "certification_id": null,
                "name": null,
                "level": null,
                "size": 123,
                "_validations": {
                    "errors": {
                        "certification": [
                            "must exist"
                        ]
                    }
                }
            }
        ],
        "annual_data":    [
            {
                "year": {reporting_year - 1},
                //...trimmed for brevity ...

```

### Update certifications

Provide the unique ID of the certification record, `id`, to update an existing certification. For example, to update the size of a certification, send the following data:
`{ "certifications": [{ "id": 123456, "size": 234, "year": 2017 }] }`

If you don't want to update or add more certifications, you can simply exclude the `certifications` array from your request.

### Remove certifications

To remove certifications you need to provide the id and the key `_destroy`.
`certifications: [{ "id": 123456, "_destroy": "1" }]`
