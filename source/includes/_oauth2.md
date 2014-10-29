https://github.com/doorkeeper-gem/doorkeeper/wiki/API-endpoint-descriptions-and-examples

https://github.com/doorkeeper-gem/doorkeeper-sinatra-client

1. Register or Login
2. Add your application:
  http://localhost:3000/oauth/applications
  Name
  Redirect URIs
  Get ID and Code (only shown once)

3a. Requesting authorization (for a web application)
  http://localhost:3000/oauth/authorize?client_id=YOUR_CLIENT_ID&redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=code

  http://localhost:3000/oauth/authorize?client_id=05134ae38a2a3521d1f9021cfcb6467f7c6bcfc1e9810efe2f96a610de692ee1&redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=code






  The user may deny request and you will receive:
  
  {"error":"access_denied","error_description":"The resource owner or authorization server denied the request."}

  The user aproves your request and you get back a single use code to request an access token:

  You will receive back an authorization_code. You may use this to request an authorization token (within 10 minutes)

  Request a token (within 10 minutes): 


  curl -v -X POST -d 'client_id=05134ae38a2a3521d1f9021cfcb6467f7c6bcfc1e9810efe2f96a610de692ee1&client_secret=f779170a0ae17fb1328170f4351e60edd2a7c07954aed8a1a5b72090053e463d&code=fb511743aa477ba718619bf0505cf9b4b34f335cac5f1ae923de6e6482da1eca&grant_type=authorization_code&redirect_uri=urn:ietf:wg:oauth:2.0:oob' http://localhost:3000/oauth/token

  {
    "access_token":"ed4cf25331202fc7de448926b0e165cc9aa8fa49c9dd751dca4a74e39a6acdf4",
    "token_type":"bearer",
    "expires_in":86400,
    "scope":"edit_assets"
  }

  Get it back and save for API requests. 

4. Use the token to authorize API requests as either a:



HTTP Header
```
$ curl -H 'Authorization: Bearer ed4cf25331202fc7de448926b0e165cc9aa8fa49c9dd751dca4a74e39a6acdf4' http://localhost:3000/api/responses
{
  "object": "list",
  "has_more": false,
  "data": [
    {
      "country": "Australia",
      "created_at": "2014-06-04T01:17:44Z",
      "id": 1846,
      "legal_status": "Listed",
      "manager": "GPT Group",
      "name": "The GPT Group",
      "property_type": "Diversified - Office/Retail",
      "region": "Oceania",
      "submitted_at": "2014-06-30T04:04:47Z",
      "survey_date": "2014",
      "updated_at": "2014-09-16T15:22:55Z"
    },
    {
      "country": "Australia",
      "created_at": "2014-06-04T01:17:42Z",
      "id": 1845,
      "legal_status": "Non-listed",
      "manager": "GPT Group",
      "name": "GPT Wholesale Shopping Centre Fund",
      "property_type": "Retail",
      "region": "Oceania",
      "submitted_at": "2014-06-30T03:58:39Z",
      "survey_date": "2014",
      "updated_at": "2014-09-16T15:22:55Z"
    }
  ]
}
```

or a Request paramter

$ curl  http://localhost:3000/api/responses?bearer_token=ed4cf25331202fc7de448926b0e165cc9aa8fa49c9dd751dca4a74e39a6acdf4
...

