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

As one of the changes in 2024, 'Year' as mandatory field is introduced to the Certifications object to determine age and apply a time factor in scoring. This means that certification records can be created by sending the `certification_id`, `level` (when relevant), `size` and `year` within the `certifications` array. The `certification_id` in constraint with the `level` is unique for each asset. Following is how part of your request body should look like when creating certification:
`{ "certifications": [{ "certification_id": 598, "level": "GoldPlus", "size": 123, "year": 2017 }] }`

The response includes a unique `id`, which is the identifier for the particular association record created.

**Data is not overwritten by sending another certification**. If the certification data does not include an `id`, we always try to create a new association.


### Update certifications

Provide the unique ID of the certification record, `id`, to update an existing certification. For example, to update the size of a certification, send the following data:
`{ "certifications": [{ "id": 123456, "size": 234, "year": 2017 }] }`

If you don't want to update or add more certifications, you can simply exclude the `certifications` array from your request.

### Remove certifications

To remove certifications you need to provide the id and the key `_destroy`.
`certifications: [{ "id": 123456, "_destroy": "1" }]`
