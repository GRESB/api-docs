# Users

## GET /user

```shell
curl https://api.gresb.com/api/v1/user \
  -H "Authorization: Bearer $ACCESS_TOKEN"
```

> Response

```json
{
    "id": 12345,
    "email": "api_user_1@gresb.com",
    "first_name": "API",
    "last_name": "User 1",
    "job_title": "API tester",
    "organization": "GRESB",
    "telephone": "+31207740220",
    "address": "Barbara Strozzilaan 101",
    "city": "Amsterdam",
    "state": "NH",
    "zip": "1083 HN",
    "country": "NL",
    "status": "active",
    "full_address": "Barbara Strozzilaan 101, Amsterdam, NH, 1083 HN, NL",
    "full_name": "API User 1",
    "created_at": "2017-03-22T11:32:19.221Z",
    "updated_at": "2018-10-23T14:57:39.618Z"
}
```

Returns details on the current authenticated user. This request
requires the `user` scope.
