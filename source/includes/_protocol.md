# Basic Operations

For all API actions below the same basic principles apply:

All API actions are over
[HTTPS](http://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol). The API is
designed in the spirit of
[REST](http://en.wikipedia.org/wiki/Representational_state_transfer).
[JSON](http://json.org/) is the primary encoding used for content.
[OAUTH2](#api-authorization) is used to authenticate your application to the
API and authorize access to our user's accounts.

## Endpoints

The API is now versioned, in order to support backwards-incompatible changes.
The current version is **v1**. This means the base URLs are:

- Testing Sandbox: <https://api-sandbox.gresb.com/api/v1>
- Production: <https://api.gresb.com/api/v1>



The following paths/endpoints are available:

| Path                                                            | HTTP verbs/methods |
|-----------------------------------------------------------------|--------------------|
| [/certifications](#certifications)                              | GET                |
| [/user](#users)                                                 | GET                |
| [/entities](#reporting-entities)                                | GET                |
| [/entities/{entity_id}](#reporting-entities)                    | GET                |
| [/entities/{entity_id}/assets](#asset-data)                     | GET, POST          |
| [/entities/{entity_id}/assets/{gresb_asset_id}](#asset-data)    | GET, PATCH, DELETE |
| [/entities/{entity_id}/assets/batches](#batch-asset-operations) | POST               |

<aside class="notice">
  <strong>NOTE:</strong> Since the API changes for the 2020 survey, we do not provide backward compatibility, thus <strong>all URLs with version 0 are no longer supported</strong> and will return an error message.
</aside>


## Common HTTP Verbs

There are four HTTP verbs we use in the API:

 * `GET` - Get a resource or a list of resources. If successfull a `200 OK`
   status code will be returned along with the results. A `GET` request is safe
   and never modifies data on the server and can always be retried if a network
   error occurs.
 * `PATCH` - Update an existing resource with new values. The request can
   contain a partial representation of the resource, meaning only the provided
   fields/attributes will be updated.
 * `POST` - Create a new resource or trigger a process with side-effects such
   as importing asset level data. If a new resource is created a `201 Created`
   status code will be returned along with the new resource. If a more complex
   action is successfully trigged a `200 OK` status will be returned along with
   action specific details. If an error occurs doing a `POST` request the
   action may or may not have been completed and so retrying it may trigger
   additional side effects or attempt to create additional resources.
 * `DELETE` - Delete an existing resource. If successful `200 OK` status code
   will be returned along with the last snapshot of the resource. `DELETE`
   requests are idempotent and can safely be retried for the same effect.

In all cases an error on the part of the client or server could also occur. The
very common status of `422 Unprocessable Entity` indicates some sort of
validation error and `404 Not Found` typically indicates an invalid resource
URI (e.g. the resource may have been deleted). Other likely codes are below but
any HTTP 1.1 code could occur.

## Common HTTP Status Codes

Standard HTTP status codes indicate success or failure of an API request.

* Codes in the 200s indicate success
* Codes in the 400s indicate error in your request
* Codes in the 500s indicate an error with GRESB's servers

| Code | Text                 | Description                                                                                                                          |
|------|----------------------|--------------------------------------------------------------------------------------------------------------------------------------|
| 200  | OK                   | Command was a success. The response body may include the result.                                                                     |
| 201  | Created              | Command was a success and a new resource has been created. The response body may include the result.                                 |
| 204  | No Content           | Command was a success. There is no futher content available.                                                                         |
| 301  | Moved Permanently    | The request included an older API version that is no longer supported.                                                               |
| 400  | Bad Request          | The request was invalid. Often there is a missing parameter. An accompanying error message with further information may be provided. |
| 401  | Unauthorized         | Authentication credentials were missing or invalid. See [authorization](#api-authorization) for more assistance.                     |
| 403  | Forbidden            | The request was refused because your account did not receive permission to complete this action.                                     |
| 404  | Not Found            | The requested item does not exist.                                                                                                   |
| 422  | Unprocessable Entity | The request to create or update a resource resulted in validation errors. Error details are returned in the response body.           |
| 429  | Too Many Requests    | The request was refused due excessive use. The batch endpoint is rate-limited to prevent abuse. Usage is tracked per Oauth2 token.   |
| 5xx  | Serverside Error     | An error has occurred on our servers.  Please wait a few minutes and try again or notify us if the errors persists.                  |

## Request and Response Encoding

Request parameters should be provided using the `application/json`
Content-Type.  The only exception is the IDs of entities or assets which are
part of the URLs.

Unless otherwise documented all responses are JSON-encoded. `Content-Type:
application/json`.

## Date formats

All date values send to the API must be [ISO 8601 formatted](https://en.wikipedia.org/wiki/ISO_8601) (YYYY-MM-DD).
Requests with incorrect format on any date fields will be rejected and an error is shown.
This rule won't apply if empty values ("" or null) for date fields are given.
