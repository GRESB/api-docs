# Basic Operations

For all API actions below the same basic principals apply:

All API actions are over <a href='http://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol'>HTTPS</a>. The API is designed in the spirit of the <a href='http://en.wikipedia.org/wiki/Representational_state_transfer'>REST</a>. <a href='http://json.org/'>JSON</a> is the primary encoding used for content. <a href='#api-authorization'>OAUTH2</a> is used to authenticate your application to the API and authorize access to our user's accounts.

## Endpoints

The API is available at the following URLs:

- Testing Sandbox: `https://api-sandbox.gresb.com/api`
- Production: `https://api.gresb.com/api`

And has the following endpoints:

- `/user`
- `/entities`
- `/asset_level_data`

## Common HTTP Verbs

There are four HTTP verbs we use in the API:

 * `GET` - Get a resource or a list of resources. If successfull a `200 OK` status code will be returned along with the results. A GET request is safe and never modifies data on the server and can always be retried if a network error occurs.
 * `POST` - Create a new resource or trigger a process with side-effects such as importing asset level data. If a new resource is created a `201 Created` status code will be returned along with the new resource. If a more complex action is successfully trigged a `200 OK` status will be returned along with action specific details. If an error occurs doing a `POST` request the action may or may not have been completed and so retrying it may trigger additional side effects or attempt to create additional resources.
 * `DELETE` - Delete an existing resource. If successfull `204 No Content` status code will be returned. `DELETE` requests are idempotent and can safely be retried for the same effect.

In all cases an error on the part of the client or server could also occur. The very common stutus of `422 Unprocessable Entity` indicates some sort of validation error and `404 Not Found` typically indicates an invalid resource URI (e.g. the resource may have been deleted). Other likely codes are below but any HTTP 1.1 code could occur.

## Common HTTP Status
Standard HTTP statue codes indicate success or failure of an API request.

* Codes in the 200s indicate success
* Codes in the 400s indicate error in your request
* Codes in the 500s indicate an error with GRESB's servers

| Code | Text                 | Description                                                                                                                                                                |
|------|----------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 200  | OK                   | Command was a success. The response body may include the result.                                                                                                           |
| 201  | Created              | Command was a success and a new resource has been created. The response body may include the result.                                                                       |
| 204  | No Content           | Command was a success. There is no futher content available.                                                                                                               |
| 400  | Bad Request          | The request was invalid. Often there is a missing parameter. An accompanying error message with further information may be provided.                                       |
| 401  | Unauthorized         | Authentication credentials were missing or invalid. See [authorization](#api-authorization) for more assistance.                                                           |
| 403  | Forbidden            | The request was refused because your account did not receive permission to complete this action or exceeded rate limits.                                                   |
| 404  | Not Found            | The requested item does not exist.                                                                                                                                         |
| 422  | Unprocessable Entity | The request to create or update a resource resulted in validation errors. Error details are returned in the response body. See [errors & warnings](#errors-amp-warnings).  |
| 5xx  | Serverside Error     | An error has occurred on our servers.  Please wait a few minutes and try again or notify us if the errors persists.                                                        |

## Parameter Encoding

Request parameters can be provided in the following `Content-Types`:

 * `application/x-www-form-urlencoded` - URL-encoded parameters can always be provided as part of the URL (e.g. `action?param1=value1&param2=value2`) This is also the default encoding for a request that includes a body.
 * `multipart/form-data` - Request bodies can also be provided by sending a `Content-Type: multipart/form-data` header. This may be used to submit attached file form as an HTML form for example.
 * `application/json ` - When submitting structured data it is often more convinent to send a `Content-Type: application/json` header followed by the content as JSON data.

**Note:** If sending a JSON body is not practical structured data it could be encoded in the url or form-data following the conventions used in in Ruby on Rails for <a href='http://guides.rubyonrails.org/action_controller_overview.html#hash-and-array-parameters'>hash and array parameters.</a>

## Result Body Encoding

Unless otherwise documented all responses are JSON-encoded. `Content-Type: application/json`.
