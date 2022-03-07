# Reporting Entities

<aside class="warning">
  This set of endpoints replaces the previous "Survey Responses" endpoints. Only
  an entity is required to submit asset level data, making it easier to test
  your integration, even outside the regular assessment period.
</aside>

To submit data for another entity, you need to be invited as a contributor, by
an account manager. For testing purposes, you can create a reporting entity,
using the [GRESB sandbox portal](https://api-sandbox.gresb.com/).

## GET /entities

```shell
curl https://api.gresb.com/api/v1/entities \
  -H "Authorization: Bearer $ACCESS_TOKEN"
```

> Response

```json
[
    {
        "id": 1517,
        "name": "Blue Buildings",
        "manager": "Blue Bridge LLC",
        "hq_country_code": "BR",
        "hq_country_name": "Brazil",
        "reporting_preferences": {
            "currency": "USD",
            "area_units_name": "Square Feet",
            "reporting_period": "fiscal",
            "reporting_period_month": 1,
            "reporting_period_month_name": "January"
        },
        "current_user_access": {
            "role": "account manager",
            "can_manage_assets": true
        },
        "created_at": "2017-10-26T13:20:48.127Z",
        "updated_at": "2021-02-01T15:01:27.557Z"
    },
    {
        "id": 5028,
        "name": "Rainbow Offices",
        "manager": "Rainbow Offices plc",
        "hq_country_code": "DE",
        "hq_country_name": "Germany",
        "reporting_preferences": {
            "currency": "EUR",
            "area_units_name": "Square Meters",
            "reporting_period": "fiscal",
            "reporting_period_month": 5,
            "reporting_period_month_name": "May"
        },
        "current_user_access": {
            "role": "internal contributor",
            "can_manage_assets": false
        },
        "created_at": "2017-11-13T16:26:16.719Z",
        "updated_at": "2021-01-05T12:30:48.765Z"
    }
]
```

Returns all the entities (companies or funds) for which the user has
contributor access. The required [scope](#api-authorization-oauth-scopes) is
`entities`.

## GET /entities/{entity_id}

```shell
curl https://api.gresb.com/api/v1/entities/5028 \
  -H "Authorization: Bearer $ACCESS_TOKEN"
```

> Response

```json
{
    "id": 5028,
    "name": "Rainbow Offices",
    "manager": "Rainbow Offices plc",
    "hq_country_code": "DE",
    "hq_country_name": "Germany",
    "reporting_preferences": {
        "currency": "EUR",
        "area_units_name": "Square Meters",
        "reporting_period": "fiscal",
        "reporting_period_month": 5,
        "reporting_period_month_name": "May"
    },
    "current_user_access": {
        "role": "account manager",
        "can_manage_assets": true
    },
    "created_at": "2017-11-13T16:26:16.719Z",
    "updated_at": "2021-02-05T12:30:48.765Z"
}
```

Similar to the above, but returns the details on a specific entity (company or
fund), identified by the ID in the URL. Requires that the user has contributor
access to the entity. The required [scope](#api-authorization-oauth-scopes) is
`entities`.
