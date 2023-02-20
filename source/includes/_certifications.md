# Asset Certifications

We provide a list of available building certifications that can be assigned to an asset.
Some certifications have various levels available. In those cases, the `level` field is mandatory for an asset.

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

