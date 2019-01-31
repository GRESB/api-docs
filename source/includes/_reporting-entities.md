# Reporting Entities

The entities (companies or funds) participating in the survey. Entity information is extracted via the `entities` endpoint.

<aside class="warning">
  This endpoint replaces the previous "Survey Responses" endpoint. Only an
  entity is required to submit asset level data, making it easier to test your
  integration, even outside the regular assessment period.
</aside>

## Fields

| Field | Notes                                                                |
|-------|----------------------------------------------------------------------|
| id | The ID of this entity. This should be included in the asset-level URLs. |
| name | The name of this entity |
| manager | The manager of this entity (person or other company) |
| created_at | The time when this entity was created (UTC, ISO 8601) |
| updated_at | The time when this entity was last updated (UTC, ISO 8601) |

## List Entities

```shell
curl https://api.gresb.com/api/entities -H "Authorization: Bearer $TOKEN"
```

> Returns

```json
[
  {
    "id": 1973,
    "name": "Rainbow Road LLC",
    "created_at": "2017-03-03T10:06:41.339Z",
    "updated_at": "2018-08-17T10:09:15.557Z",
    "manager": "John Doe",
  },
  {
    "id": 1848,
    "name": "Yellow Bridge",
    "created_at": "2017-10-22T17:44:14.795Z",
    "updated_at": "2018-09-06T16:55:26.537Z",
    "manager": "Jack Bauer"
  }
]
```

`GET /api/entities`

Returns a list of entities accessible by the API user. This is a read-only list,
used for discovering the ID necessary for all the other asset data related URLs.

To manage your entities, use the [GRESB portal](https://portal.gresb.com/).
