# Users

## GET /user

Returns details on the current authenticated user. This request
requires the `user` scope.

```shell
curl https://api.gresb.com/api/v1/user \
  -H "Authorization: Bearer $ACCESS_TOKEN"
```

> Response:

```json
{
   "id": 1234,
   "username": "api_tester@gresb.com",
   "email": "api_tester@gresb.com",
   "first_name": "API",
   "last_name": "Tester",
   "job_title": "API Tester",
   "organization": "GRESB",
   "telephone": "+31600000000",
   "address": "Barbara Strozzilaan 374",
   "city": "Amsterdam",
   "state": "Noord Holland",
   "zip": "1083 HN",
   "country": "NL",
   "status": "active",
   "full_address": "Barbara Strozilaan 374, Amsterdam, Noord Holland, 1083 HN, NL",
   "full_name": "API Tester",
   "name": "API Tester",
   "created_at": "2022-03-07T18:57:31.423Z",
   "updated_at": "2022-03-08T07:22:35.828Z"
}
```