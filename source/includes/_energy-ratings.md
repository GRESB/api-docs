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

Previously, participants could submit only one energy rating per asset. As per the 2024 Standard Changes, asset data entry form will be accomodating the submission of **multiple energy ratings per asset** with a limit of 10 at its maximum. This modification will facilitate more accurate reporting especially meant for residential units.

Unlike the previous structure where energy ratings were reported under the objects "energy_rating_id" and "energy_rating_size" in the annual_data array, they will be now encapsulated within their own array, similar to Building Certifications. To add an energy rating to an asset, send a request to `/entities/{entity_id}/assets/{asset_id}` using PATCH method. Energy ratings are posted annually as outlined in the data dictionary. Each energy rating has to have an ID and a size specified in order to be valid.

New format of the payload is exemplified by the following structure:

`"energy_ratings": [
  {
    "energy_rating_id": 57,
    "size": 123
  },
  {
    "energy_rating_id": 66,
    "size": 456
  }
]`

Energy ratings can be updated with the corresponding `energy_rating_id` and removed by setting the related fields to `null`.
