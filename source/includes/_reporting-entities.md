# Reporting Entities

For testing purposes, you can create a reporting entity,
using the [GRESB sandbox portal](https://demo-portal.gresb.com/).

## GET /entities
Returns all the entities to which the data partner has access.

```shell
curl https://api.gresb.com/api/v1/entities \
  -H "Authorization: Bearer $ACCESS_TOKEN"
```

> Response:

```json
[
   {
      "id": {entity_id},
      "name": "API Test Entity",
      "manager": "GRESB",
      "hq_country_code": "NL",
      "hq_country_name": "Netherlands",
      "address": "Barbara Strozzilaan 374",
      "reporting_preferences":    
         {
            "currency": "EUR",
            "area_units_name": "Square Meters",
            "reporting_period": "fiscal",
            "reporting_period_month": 4,
            "reporting_period_month_name": "April"
         },
      "created_at": {date},
      "updated_at": {date}
   },
   {
      "id": {entity_id_2},
      "name": "API Test Entity 2",
      "manager": "GRESB",
      "hq_country_code": "NL",
      "hq_country_name": "Netherlands",
      "address": "Barbara Strozzilaan 374",
      "reporting_preferences":    
         {
            "currency": "EUR",
            "area_units_name": "Square Meters",
            "reporting_period": "fiscal",
            "reporting_period_month": 4,
            "reporting_period_month_name": "April"
         },
      "created_at": {date},
      "updated_at": {date}
   }
]
```
## GET /entities/{entity_id}

Similar to the above, but returns the details on a specific entity, identified by the ID in the URL.

```shell
curl https://api.gresb.com/api/v1/entities/{entity_id} \
  -H "Authorization: Bearer $ACCESS_TOKEN"
```

> Response:

```json
{
   "id": {entity_id},
   "name": "API Test Entity",
   "manager": "API Tester",
   "hq_country_code": "NL",
   "hq_country_name": "Netherlands",
   "address": "Barbara Strozzilaan 374",
   "reporting_preferences":    
      {
         "currency": "EUR",
         "area_units_name": "Square Meters",
         "reporting_period": "fiscal",
         "reporting_period_month": 4,
         "reporting_period_month_name": "April"
      },
   "created_at": {date},
   "updated_at": {date}
}
```
