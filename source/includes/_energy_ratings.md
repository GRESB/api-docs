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

### Create, Update and Remove Energy Rating

To add an energy rating to an asset, send a request to `/entities/{entity_id}/assets/{asset_id}` using PATCH method. Energy ratings are posted annually as outlined in the data dictionary. Each energy rating has to have an ID and a size specified in order to be valid. Energy ratings can be updated with the corresponding `energy_rating_id` and removed by setting the related fields to `null`.

Beware that an asset cannot have more than one energy rating per year.

Following is how part of your request body should look like:
`{ "annual_data": [{ "year": 2022, "energy_rating_id": 57, "energy_rating_size": 50 }] }`

