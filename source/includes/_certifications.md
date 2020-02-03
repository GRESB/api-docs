# Certifications

We provide a list of available building certifications that can be assigned to an asset.
Some certifications have various levels available. In those cases, the `level` field is mandatory for an asset.

## GET /certifications

```shell
curl https://api.gresb.com/api/v1/certifications
```

> Response

```json
[
  {
    "id": 585,
    "name": "ABINC Certification/Urban Development and Shopping Centre",
    "country": "JP"
  },
  {
    "id": 895,
    "name": "Austin Energy/Austin Energy Green Building - Design & Construction",
    "levels": [
      "5 Stars",
      "4 Stars",
      "3 Stars",
      "2 Stars",
      "1 Star"
    ]
  }
]  
```
