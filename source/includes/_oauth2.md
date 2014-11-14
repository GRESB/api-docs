
#OAuth 2.0 

The GRESB API uses OAuth 2.0 protocol to securely authorize accounts. Each request made to the GRESB API requires an access token.  The process for doing this is outlined below.


##Basic Steps

**1. Obtain Oauth 2.0 Credentials** 

Before receiving an access token, you must register your application and obtain OAuth credentials.  This will include a unique client id and secret.  Ensure that you are logged into your GRESB account, then add your application to http://localhost:3000/oauth/applications.  You will need to include a name and a redirect URI. 

**Application Registration Screen:**

 <img src="/images/oauth_pictures/register.jpg" alt="registration pic" style="border:2px solid black">

Once you submit, you will be directed to a page with your unique client ID and secret.  Your credentials will only be shown once, so be sure to record them.   
 
**Credentials Screen:**

<img src="/images/oauth_pictures/credential.jpg" alt="credential pic" style="border:2px solid black"> 


**2. User consent (for a web application)**

>User Consent URI:

```shell
  http://localhost:3000/oauth/authorize?client_id=YOUR_CLIENT_ID&redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=code
```

>example:

```shell
  http://localhost:3000/oauth/authorize?client_id=05134ae38a2a3521d1f9021cfcb6467f7c6bcfc1e9810efe2f96a610de692ee1&redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=code
```

The next step is to receive authorization from your user that you may read/write on his or her behalf.  Direct the user to our authorization URI, provided to the right.  Your client id must be included in the string. 


  If the user denies your request, you will receive this error:
  
**{"error":"access_denied",
"error_description":"The resource owner or authorization server denied the request."}**

  If the user approves your request:

  You will receive a one time use authorization code. You may use this to request an access_token.  The authorization code will expire in 10 minutes if it is not used.

**Authorization Code Screen:**

<img src="/images/oauth_pictures/authorization.jpg" alt="authorization pic" style="border:2px solid black">


**3. Exchange Authorization_Code for Access_Token**

>return access_token

```shell
$ curl
http://localhost:3000/oauth/token
-X POST 
-d
'client_id=05134ae38a2a3521d1f9021cfcb6467f7c6bcfc1e9810efe2f96a610de692ee1&client_secret=f779170a0ae17fb1328170f4351e60edd2a7c07954aed8a1a5b72090053e463d&code=fb511743aa477ba718619bf0505cf9b4b34f335cac5f1ae923de6e6482da1eca&grant_type=authorization_code&redirect_uri=urn:ietf:wg:oauth:2.0:oob' 

> Response

  {
    "access_token":"ed4cf25331202fc7de448926b0e165cc9aa8fa49c9dd751dca4a74e39a6acdf4",
    "token_type":"bearer",
    "expires_in":86400,
    "scope":"edit_assets"
  }
```

You can now request an access token.  You must include your client id, secret, and authorization code in the header of your request.  In return you will receive an access_token for you application.  Access tokens have a limited lifetime. However, if your application needs access beyond this lifetime, you can request a refresh token.  A refresh token will gives your application the ability to obtain new access tokens.  

**Access Token Screen:**

<img src="/images/oauth_pictures/access.jpg" alt="access token pic" style="border:2px solid black">


**4. Make a request**

The access token will allow you to make requests of the GRESB API.  The token can be included either as part of the HTTP header, or as a request parameter.  

> Include access_token as HTTP Header

```shell 
$ curl 
http://localhost:3000/api/responses
-H 'Authorization: Bearer ed4cf25331202fc7de448926b0e165cc9aa8fa49c9dd751dca4a74e39a6acdf4' 

```

>Include acces_token as a parameter

```shell
$ curl  
http://localhost:3000/api/responses?bearer_token=ed4cf25331202fc7de448926b0e165cc9aa8fa49c9dd751dca4a74e39a6acdf4
```
