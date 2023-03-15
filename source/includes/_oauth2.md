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

An OAuth application can be created through your data partner account. Subsequently OAuth can be used to ask a user to grant access. This will then provide access through OAuth for the entities the user has access to. This will only work if the entities are also connected to your data partner account (see previous section). This is meant to secure user permission and saves you the exercise of mapping entities to your own internal platform. Since you can simply show to the user what is returned through OAuth.

An OAuth application can be created through your data partner account.

<img src="images/authorization_flow/oauth-data-partner.png" alt="oauth data partner">

While creating a new OAuth application you need to add a redirect uri to which responses are send back.

<img src="images/authorization_flow/oauth-create-new-application.png" alt="oauth new application">

After creation you will see the application id and secret which you can hand in for a bearer token.

<img src="images/authorization_flow/oauth-application-id-secret.png" alt="oauth id secret">

{write here URL to request bearer token ask Bart and provide code blob in side bar}

If you want to alter the id or change the name you can always return back to your data partner account and edit the OAuth application.

When you want the user to authorize your OAuth application you have to...

The token generated after the user authorizes your application expires after 2 hours. This then needs to be refreshed, which requires the user to authorize your application again. If the user is still logged in to the GRESB Portal this will not prompt the user to login again.

{ask Bart to write a couple words on how to use the user login flow to authorize their OAuth application by the user. This needs to include the screenshot of the login popup
they see on their end when executing this flow and some example requests}


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
