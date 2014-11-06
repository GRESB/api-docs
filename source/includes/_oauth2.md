
#OAuth 2.0 

The GRESB API uses OAuth 2.0 protocol to securely authorize accounts. Each request made to the GRESB API requires an access token.  The process for doing this is outlined below.


##Basic Steps

###1. Obtain Oauth 2.0 Credentials 
Before receiving an access token, you must register your application and obtain OAuth credentials.  This will include a unique client id and secret.  Ensure that you are logged into your GRESB account, add your application to http://localhost:3000/oauth/applications.  You will need to include a name, and a redirect URI.  The server will send a respond with a client id and secret.  These will only be shown once.   
 

###2 User consent (for a web application)

The next step is to receive authorization from a user that you may read and post on a user's behalf.  Direct the user to our authorization URI, provided to the right.  Your client id must be included in this string.  

>User Consent URI:

```shell
  http://localhost:3000/oauth/authorize?client_id=YOUR_CLIENT_ID&redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=code
```

>example:

```shell
  http://localhost:3000/oauth/authorize?client_id=05134ae38a2a3521d1f9021cfcb6467f7c6bcfc1e9810efe2f96a610de692ee1&redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=code
```

  If the user denies your request:
  
  you will receive {"error":"access_denied","error_description":"The resource owner or authorization server denied the request."}

  If the user approves your request:

  You will receive a one time use authorization_code. You may use this to request an access_token.  The authorization_code will expire in 10 minutes if it is not used.

###3 Exchange Authorization_Code for Access_Token

The next step is to request a token.  You must include your client id, secret, and authorization code in the header.  In return you will receive an access_token

>return access_token

```shell
-v 
-X POST 
-d
'client_id=05134ae38a2a3521d1f9021cfcb6467f7c6bcfc1e9810efe2f96a610de692ee1&client_secret=f779170a0ae17fb1328170f4351e60edd2a7c07954aed8a1a5b72090053e463d&code=fb511743aa477ba718619bf0505cf9b4b34f335cac5f1ae923de6e6482da1eca&grant_type=authorization_code&redirect_uri=urn:ietf:wg:oauth:2.0:oob' http://localhost:3000/oauth/token

  {
    "access_token":"ed4cf25331202fc7de448926b0e165cc9aa8fa49c9dd751dca4a74e39a6acdf4",
    "token_type":"bearer",
    "expires_in":86400,
    "scope":"edit_assets"
  }
```

###4. Make a request

Now you can make a request, using the access_token.  This can be included either as part of the HTTP header, or as a request parameter.  

> Request authorization as an HTTP Header

```shell
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

>Request authorization as a parameter

```shell
$ curl  http://localhost:3000/api/responses?bearer_token=ed4cf25331202fc7de448926b0e165cc9aa8fa49c9dd751dca4a74e39a6acdf4
...
```
