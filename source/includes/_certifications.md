# Certifications

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
