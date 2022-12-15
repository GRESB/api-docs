# API Authorization PLACEHOLDER

The GRESB API uses OAuth 2.0 protocol to securely authorize accounts. Each request made to the GRESB API requires an access token unique to your application. The process for obtaining an access token is outlined below.


## Registering your Application

### 1. Obtain OAuth 2.0 Credentials

Before receiving an access token, you must register your application and obtain
OAuth credentials.  This will include a unique `client_id` and `client_secret`.
First, ensure that you are logged into your GRESB account, then add your
application to <https://portal.gresb.com/oauth/applications>.  You will need to
include a name and one or more redirect URIs.

<aside class="notice">
  <strong>NOTE:</strong> Please make sure that the application name is your
  company name.  The application name will be displayed on scorecards where
  asset data was submitted through the API: "Performance data submitted at
  asset level using {application_name}"
</aside>

### New Application

<img src="images/oauth_pictures/register.png" alt="registration pic">

Once you submit, you will be directed to a page with your unique client ID and
secret. You may also return to <https://portal.gresb.com/oauth/applications> to
see your registered applications.

### Sample Application**

<img src="images/oauth_pictures/credential.png" alt="credential pic">

You may register as many applications as you like.

## Requesting API Access

To use the GRESB API, you must receive authorization from your users to access their accounts.  There are many ways to do this.  This step is typically handled using a client library (see Client Libraries at <a href='http://oauth.net/2/'>http://oauth.net/2/</a> for examples in many languages). We support the following standard flows:

* Authorization Code Grant Flow - Often used for Web Applications (server-side)

## OAuth Scopes PLACEHOLDER

OAuth allows you to request different levels of access to a user's account. By
default all applications are granted access to the `public` scope. For the
GRESB API that doesn't allow access to any user data. To use the API in a
meaningful way, you need to request one or more of the following scopes:

| Scope        | Access                   | Endpoints |
|--------------|--------------------------|-----------|
| user         | Read access to user info | `GET /user` |
| entities     | Read access to entities  | `GET /entities` and `GET /entities/{entity_id}` |
| read:assets  | Read access to assets    | `GET /entities/{entity_id}/assets` and `GET /entities/{entity_id}/assets/{asset_id}` |
| write:assets | Write access to assets   | `POST /entities/{id}/assets`, `PATCH/DELETE /entities/{id}/assets/{id}`, `POST /entities/{entity_id}/assets/batches` |
| read & write:responses         | Read and write access to responses | `GET entities/{entity_id}/responses/`, `GET entities/{entity_id}/responses/{entity_id}` and `POST entities/{entity_id}/responses/{response_id}`|

If your user is not already signed in to their GRESB account they will be
prompted to sign in or create a new account. Once signed in, the user will then
be shown an authorization request with the option to 'Authorize' or 'Deny' your
application access.

## Example: Web Applications

As an example we will describe in detail the Authorization Code Grant Flow for a web application. This is the most secure method to authorize your application. It is also the most complex and is made simpler by using an OAuth client library.

### Step 1 - Request Authorization
An account and reporting entities for the  participant user needs to be created on <https://portal.gresb.com>.
The first time you grant a user access to the GRESB API via your application, link the user to <https://portal.gresb.com/oauth/authorize>, passing the following parameters:

* your application's `client_id`
* one of your application's registered `redirect_uris`
* `response_type=code`
* the access `scope` you need

The full URL should look like this:

<https://portal.gresb.com/oauth/authorize?client_id=CLIENT_ID&redirect_uri=https://www.example.com/oauth2/callback&response_type=code&scope=write:assets>

If you are testing this on the API sandbox, you can use the "Authorize" button, to simulate this step:

<img src="images/oauth_pictures/authorize-test-url.png" alt="authorize test app">

**Authorization Code Screen:**

The user will be requested to authorize or deny access to your application:

<img src="images/oauth_pictures/authorize.png" alt="authorization screen">

If the user denies your request you will receive a request at the
`redirect_uri` with `error` and `error_description` parameters:

<https://www.example.com/oauth2/callback?error=access_denied&error_description=User+denied>

If the user authorizes your request you will receive a request at the
`redirect_uri` with the authorization code in the `code` parameter. You will
use this to request an `access_token`.  The authorization code will expire in
10 minutes. Once expired a fresh code must be requested. For example if your
`redirect_uri` was <http://example.com/oauth2/callback> you should expect a
callback to:

<https://www.example.com/oauth2/callback?code=AUTHORIZATION_CODE>

**Note:** It is also possible to use the `urn:ietf:wg:oauth:2.0:oob` as a `redirect_uri`. Doing this will display the code to the user in a webpage and ask them to copy and paste it into your application's configuration. This might be useful during testing or if your application does not have a web server component.

<img src="images/oauth_pictures/code.png" alt="authorization code screen">

It is important to remember that users may revoke your application's access at any time. The easiest course of action if this happens is to request access again starting at Step 1.

### Step 2 - Exchange Authorization Code for Access Token

```shell
curl \
  -F "client_id=$CLIENT_ID" \
  -F "client_secret=$CLIENT_SECRET" \
  -F "code=$AUTHORIZATION_CODE" \
  -F "grant_type=authorization_code" \
  -F "redirect_uri=urn:ietf:wg:oauth:2.0:oob" \
  -X POST https://api.gresb.com/oauth/token
```

> Response:

```json
{
  "access_token":"0123456789abcdef...",
  "token_type":"bearer",
  "expires_in":null,
  "scope":"write:assets"
}
```

```shell
curl \
  -F "access_token=$ACCESS_TOKEN" \
  -X POST https://api.gresb.com/oauth/token/info?
```

> Response:

```json
{
  "resource_owner_id":1234,
  "scope":["public","write:assets"],
  "expires_in":null,
  "application": {
    "uid":"d26b1521a034a2e4cfc6372b0db51e6790421e1fd00fd97d5a0d923fe67b685b"
  },
  "created_at":1548944742
}
```

You can now request an access token by issuing a POST request to
`/oauth/token`.  You must include `grant_type=authorization_code`, your
`client_id`, `client_secret`, and the authorization `code` as parameters to
your request.  In return you will receive an `access_token` for you
application.

`POST /oauth/token?client_id=$CLIENT_ID&client_secret=$CLIENT_SECRET&code=$AUTHORIZATION_CODE&redirect_uri=urn:ietf:wg:oauth:2.0:oob`


### Step 3. Use Access Token

The access token can now be used to make requests to the GRESB API.  The token must be included either as a `Authorization: Bearer` HTTP header, or as a request parameter named `access_token`.

As an HTTP Header:

`curl https://api.gresb.com/api/responses -H 'Authorization: Bearer $ACCESS_TOKEN'`

As a request parameter:

`curl https://api.gresb.com/api/responses?access_token=$ACCESS_TOKEN`

## OAuth Errors

**Common**

* **invalid_request**: 'The request is missing a required parameter, includes an unsupported parameter - value, or is otherwise malformed.'
* **invalid_redirect_uri**: 'The redirect uri included is not valid.'
* **unauthorized_client**: 'The client is not authorized to perform this request using this method.'
* **access_denied**: 'The resource owner or authorization server denied the request.'
* **invalid_scope**: 'The requested scope is invalid, unknown, or malformed.'
* **server_error**: 'The authorization server encountered an unexpected condition which prevented it from fulfilling the request.'
* **temporarily_unavailable**: 'The authorization server is currently unable to handle the request due to a temporary overloading or maintenance of the server.'

**Access Grant Errors**

* **unsupported_response_type**: 'The authorization server does not support this response type.'

**Access Token Errors**

* **invalid_client**: 'Client authentication failed due to unknown client, no client authentication included, or unsupported authentication method.'
* **invalid_grant**: 'The provided authorization grant is invalid, expired, revoked, does not match the redirection URI used in the authorization request, or was issued to another client.'
* **unsupported_grant_type**: 'The authorization grant type is not supported by the authorization server.'

**Password Access Token Errors**

* **invalid_resource_owner**: 'The provided resource owner credentials are not valid, or resource owner cannot be found'

**Invalid Tokens**

* **revoked**: "The access token was revoked"
* **expired**: "The access token expired"
* **unknown**: "The access token is invalid"
