# Users

Almost every aspect of the site is tied to an authenticated user. User information is extracted via the `/user` endpoint.

## Fields
|Field|Access|Notes|
|--- |--- |--- |
|id|read-only|Unique ID for the user.|
|name|read-only|The best name to show for this user.|
|username|optional|A unique username used for login.|
|email|optional|An email address used for notifications.|
|full_name|optional||
|job_title|optional||
|organization|optional||
|telephone|optional||
|address|optional||
|country|optional|Country Code (ISO 3166-1 alpha-2)|
|status|optional|`pending` - This user has been invited but has not yet accepted. `active` - Current User. `disabled` - Login disable.|
|created_at|read-only|Date (ISO8601 date format) this resource was created.|
|updated_at|read-only|Date (ISO8601 date format) this resource was last updated.|

## Get the authenticated user

```shell
curl https://api.gresb.com/api/user -H "Authorization: Bearer $TOKEN"
```

> Response

```json
{
  "id": 2026,
  "username": "apiexample",
  "email": "api@example.com",
  "full_name": "API Example",
  "job_title": "API Tester",
  "organization": "api test",
  "telephone": "1 (800) 555-1212",
  "address": "1234 fake street",
  "country": "US",
  "created_at": "2000-11-06T20:26:39Z",
  "updated_at": "2000-01-12T04:30:31Z",
  "status": "active",
  "name": "API Example"
}
```

`GET /api/user`

This request returns details on the current authenticated user.
