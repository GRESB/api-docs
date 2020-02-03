# Energy Ratings

We provide a list of available enery ratings that can be assigned to an asset,
per year (in the `annual_data` field).

## GET /energy_ratings

```shell
curl https://api.gresb.com/api/v1/energy_ratings
```

> Response

```json
[
  {
    "id": 47,
    "name": "Energy Star Certified - 75-79 Points"
  },
  {
    "id": 3,
    "name": "EU EPC - A"
  }
]
```
