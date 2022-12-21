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