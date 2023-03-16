# API Authorization

The GRESB API requires an access token to make requests to the several endpoints. These access tokens are created through your data partner account in the GRESB Portal and are unique to your application. The process for creating access token is outlined below.

## Manage data partner account

Before you will be able to create access tokens, a GRESB data partner account has to be assigned to your GRESB Portal user account. In order to verify if this is the case you will have to login to https://portal.gresb.com/ and confirm that you have the 'Data Partners' tab on the navigation menu.

<img src="images/authorization_flow/data-partner-go-to-account.png" alt="access data partner account">

Your data partner account is where you manage your tokens and users. Any user associated with this account can access the page.

<img src="images/authorization_flow/data-partner-account-page.png" alt="data partner page">

When you generate a new token you can give it a name and expiration date. An access token can at most be valid for 1 year.

<img src="images/authorization_flow/data-partner-generate-new-token.png" alt="generate new token">

Once generated be sure to copy your access token.

<img src="images/authorization_flow/data-partner-copy-token.png" alt="copy token">

After generating a number of tokens you'll see an overview in your data partner account. You can delete tokens at any moment in time. After the expiration date they automatically get deactivated.

<img src="images/authorization_flow/data-partner-token-overview.png" alt="see tokens">

## Provide access to data partner

Once you have your data partner account set up your clients need to provide you with access. This is done through their user accounts. When they login they will see an overview of their GRESB reporting entities. For each entity they will need to provide your data partner account with access. This is done one at a time.

<img src="images/authorization_flow/participant-entities-page.png" alt="participant entities">

Once they clicked on one of their reporting entities the will need to go to the 'Data Partner Access Rights' tab.

<img src="images/authorization_flow/participant-responses-page.png" alt="participant responses">

In this page they can grant access to a data partner by selecting the data partner from the list. They can also revoke access at any given time.

<img src="images/authorization_flow/participant-grant-data-partner-access.png" alt="grant access">

<img src="images/authorization_flow/participant-select-data-partner.png" alt="select data partner">

<img src="images/authorization_flow/participant-granted-data-partner-access.png" alt="granted access">

## OAuth flow

An OAuth application can be created through your data partner account. Subsequently OAuth can be used to ask a user to grant access. This will then provide access through OAuth for the entities the user has access to. **This will only work if the entities are also connected to your data partner account (see previous section).** This is meant to secure user permission and saves you the exercise of mapping entities to your own internal platform. Since you can simply show to the user what is returned through OAuth.

An OAuth application can be created through your data partner account.

<img src="images/authorization_flow/oauth-data-partner.png" alt="oauth data partner">

If you want to alter the id or change the name you can always return back to your data partner account and edit the OAuth application.

The token generated after the user authorizes your application expires after 2 hours. This then needs to be refreshed, which requires the user to authorize your application again. If the user is still logged in to the GRESB Portal this will not prompt the user to login again.

### Obtain OAuth 2.0 Credentials

Before receiving an access token, you must register your application and obtain OAuth credentials.  This will include a unique `client_id` and `client_secret`.First, ensure that you are logged into your GRESB account, then add your
application to your data partner account.  You will need to
include a name and one or more redirect URIs.

<aside class="notice">
  <strong>NOTE:</strong> Please make sure that the application name is your
  company name.  The application name will be displayed on scorecards where
  data was submitted through the API: "Data submitted using {application_name}".
</aside>

<img src="images/authorization_flow/oauth-create-new-application.png" alt="oauth new application">

### Sample Application

<img src="images/authorization_flow/oauth-application-id-secret.png" alt="oauth id secret">

You may register as many applications as you like.

### Requesting API Access

To use OAuth, you must receive authorization from your users to access their entities.  There are many ways to do this.  This step is typically handled using a client library (see Client Libraries at <a href='http://oauth.net/2/'>http://oauth.net/2/</a> for examples in many languages). We support the following standard flows:

* Authorization Code Grant Flow - Often used for Web Applications (server-side)

### OAuth Scopes

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

### Example: Web Applications

As an example we will describe in detail the Authorization Code Grant Flow for a web application. This is the most secure method to authorize your application. It is also the most complex and is made simpler by using an OAuth client library.

#### Step 1 - Request Authorization
An account and reporting entities for the  participant user needs to be created on <https://portal.gresb.com>.
The first time you grant a user access to the GRESB API via your application, link the user to <https://portal.gresb.com/oauth/authorize>, passing the following parameters:

* your application's `client_id`
* one of your application's registered `redirect_uris`
* `response_type=code`
* the access `scope` you need

The full URL should look like this:

<https://portal.gresb.com/oauth/authorize?client_id=CLIENT_ID&redirect_uri=https://www.example.com/oauth2/callback&response_type=code&scope=write:assets>

If you are testing this on the testing environment, you can use the "Authorize" button, to simulate this step:

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
  "expires_in":7200,
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


## View-only UI

After you have been given access to a reporting entity you will have view-only access to the data forms in the UI. This allows you to see the data uploaded through the API endpoints, as the client would see it. This is especially helpful for the Real Estate assessment, since our current portfolio endpoint does not respond with validation. As such when you access your user account you will see an overview of reporting entities.

<aside class="notice">
  <strong>NOTE:</strong> Reporting entities you have created yourself will allow view & edit UI access.
  Next to the ones where you have view-only UI access. This will mostly occur during testing where you create
  reporting entities yourself.
</aside>

<img src="images/authorization_flow/data-partner-entities-page.png" alt="data partner entities">

When you click on one of the reporting entities you will be able to access the 'Asset Portal' and 'Response'. The asset portal is for viewing the asset data, whereas the response of the GRESB Assessment is for viewing the portfolio data.

<img src="images/authorization_flow/data-partner-response-asset-view.png" alt="view-only data forms">
