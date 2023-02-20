# Asset Energy Ratings

We provide a list of available energy ratings that can be assigned to an asset.

<aside class="notice">
<strong>Create, Update and Remove Energy Rating</strong>
</aside>
  To add an energy rating to an asset, send a request to <code>/entities/{entity_id}/assets/{asset_id}</code> using PATCH method. Energy ratings are posted annually as outlined in the data dictionary. Each energy rating has to have an <code>id</code> and a <code>size</code> specified in order to be valid. Energy ratings can be updated with the corresponding id and removed by setting the related fields to <code>null</code>. Beware that an asset cannot have more than one energy rating per year.

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
