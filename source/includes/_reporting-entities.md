# Reporting Entities

To submit data for another entity you need to be invited as a contributor by
an account manager.

## Providing your Application with access to a Reporting Entity

### 1.  Go to the GRESB Portal and click on access
<img src="images/access_permission_pictures/access_link.png" alt="access_link pic">

### 2. Invite a new collaborator
<img src="images/access_permission_pictures/invite_collaborator_link.png" alt="invite_link pic">

### 3. Invite the user associated with your application as an Internal Contributor
<img src="images/access_permission_pictures/select_access_link.png" alt="select_access pic">


For testing purposes, you can create a reporting entity,
using the [GRESB sandbox portal](https://api-sandbox.gresb.com/).

## GET /entities
Returns all the entities for which the user has
contributor access.

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
      "updated_at": {date},
      "current_user_access": 
         {
            "role": "account manager",
            "can_manage_assets": true
         }
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
      "updated_at": {date},
      "current_user_access":   
         {
            "role": "account manager",
            "can_manage_assets": true
         }
   }
]
```
## GET /entities/{entity_id}

Similar to the above, but returns the details on a specific entity, identified by the ID in the URL. Requires that the user has contributor
access to the entity.

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
   "updated_at": {date},
   "current_user_access": 
      {
         "role": "account manager",
         "can_manage_assets": true
      }
}
```