# Reporting Entities

<aside class="warning">
  This set of endpoints replaces the previous "Survey Responses" endpoints. Only
  an entity is required to submit asset level data, making it easier to test
  your integration, even outside the regular assessment period.
</aside>

To submit data for another entity, you need to be invited as a contributor, by
an account manager. 

##Providing your Application with access to a Reporting Entity

### 1.  Go to the GRESB Portal and click on access
<img src="images/access_permission_pictures/access_link.png" alt="access_link pic">

### 2. Invite a new collaborator
<img src="images/access_permission_pictures/invite_collaborator_link.png" alt="invite_link pic">

### 3. Invite the user associated with your application as an Internal Contributor
<img src="images/access_permission_pictures/select_access_link.png" alt="select_access pic">


For testing purposes, you can create a reporting entity,
using the [GRESB sandbox portal](https://api-sandbox.gresb.com/).

## GET /entities

```shell
curl https://api.gresb.com/api/v1/entities \
  -H "Authorization: Bearer $ACCESS_TOKEN"
```

> Response:
```json
[{
   "id": 16290,
   "name": "Entity for  API Test",
   "manager": "API Tester",
   "hq_country_code": "NL",
   "hq_country_name": "Netherlands",
   "address": "Barbara Strozzilaan 101",
   "reporting_preferences":    {
      "currency": "EUR",
      "area_units_name": "Square Meters",
      "reporting_period": "fiscal",
      "reporting_period_month": 4,
      "reporting_period_month_name": "April"
   },
   "created_at": "2022-03-07T19:11:42.518Z",
   "updated_at": "2022-03-08T07:31:16.179Z",
   "current_user_access":    {
      "role": "account manager",
      "can_manage_assets": true
   }
}]
```

Returns all the entities (companies or funds) for which the user has
contributor access. The required [scope](#api-authorization-oauth-scopes) is
`entities`.

## GET /entities/{entity_id}

```shell
curl https://api.gresb.com/api/v1/entities/16290 \
  -H "Authorization: Bearer $ACCESS_TOKEN"
```

> Response:
```json
{
   "id": 16290,
   "name": "Real Estate Entity for  API Test",
   "manager": "API Tester",
   "hq_country_code": "NL",
   "hq_country_name": "Netherlands",
   "address": "Barbara Strozzilaan 101",
   "reporting_preferences":    {
      "currency": "EUR",
      "area_units_name": "Square Meters",
      "reporting_period": "fiscal",
      "reporting_period_month": 4,
      "reporting_period_month_name": "April"
   },
   "created_at": "2022-03-07T19:11:42.518Z",
   "updated_at": "2022-03-08T07:31:16.179Z",
   "current_user_access":    {
      "role": "account manager",
      "can_manage_assets": true
   }
}
```

Similar to the above, but returns the details on a specific entity (company or
fund), identified by the ID in the URL. Requires that the user has contributor
access to the entity. The required [scope](#api-authorization-oauth-scopes) is
`entities`.