# Survey Responses

Survey responses are created for each company or fund participating in the survey.

## Fields
<table>
  <thead>
    <tr><td width='140'>Field</td><td width='80'>Access</td><td>Notes</td></tr>
  </thead>
  <tbody>
    <tr><td><code>id</code></td><td>read-only</td><td>Unique ID for the response. Used to reference the response in API calls.
    <tr><td><code>name</code></td><td>required</td><td>Name of this company or fund.</td></tr>
    <tr><td><code>manager</code></td><td>optional</td><td>Name of this Fund's management company.</td></tr>
    <tr><td><code>legal_status</code></td><td>read-only</td><td>See <a href="https://www.gresb.com/mocks/lists">Legal Status</a>.</td></tr>
    <tr><td><code>survey_date</code></td><td>read-only</td><td>Date (Year) of this Survey. Set automatically on create to the current survey year.</td></tr>
    <tr><td><code>company_fund_id</code></td><td>read-only</td><td>Unique ID for the company or fund. Used to link responses from the same company or fund across survey years. It can be changed by users to correctly link company or funds created by different respondents.</td></tr>
    <tr><td><code>country</code></td><td>read-only</td><td>Set after responses are scored. See <a href="https://www.gresb.com/mocks/lists">Countries</a>.</td></tr>
    <tr><td><code>property_type</code></td><td>read-only</td><td>Set after responses are scored. See <a href="https://www.gresb.com/mocks/lists">Company/Fund Property Types</a>.</td></tr>
    <tr><td><code>region</code></td><td>read-only</td><td>Set after responses are scored. See <a href="https://api-sandbox.gresb.com/about/lists">Region</a>.</td></tr>
    <tr><td><code>created_at</code></td><td>read-only</td><td>Date (ISO8601 date format) this resource was created.</td></tr>
    <tr><td><code>updated_at</code></td><td>read-only</td><td>Date (ISO8601 date format) this resource was last updated.</td></tr>
    <tr><td><code>submitted_at</code></td><td>read-only</td><td>Date (ISO8601 date format) of submission if the survey has been submitted null otherwise.</td></tr>
    <tr><td><code>survey</code></td><td>read-only</td><td>A sub-resource with two fields <code>survey_period_opens_on</code> and <code>survey_period_opens_on</code> indicating the close and open date of the GRESB survey.</td></tr>
  </tbody>
</table>

## List Responses

`GET /api/responses`

This request returns a list of responses associated with the respondent's account. It contains all responses editable by the user for the current survey period.

```shell
$ curl https://api.gresb.com/api/responses -H "Authorization: Bearer $TOKEN"
{
  "object": "list",
  "has_more": false,
  "data": [
    {
      "id": 2602,
      "survey_date": "2017",
      "name": "Test Response",
      "submitted_at": null,
      "manager": null,
      "region": null,
      "country": null,
      "property_type": null,
      "legal_status": null,
      "created_at": "2017-04-17T15:42:39Z",
      "updated_at": "2017-04-17T15:42:39Z",
      "company_fund_id": 12440,
      "survey": {
        "survey_period_opens_on": "2017-04-01T04:00:00Z",
        "survey_period_closes_on": "2017-09-30T04:00:00Z"
      }
    },
    {
      "id": 2603,
      "survey_date": "2017",
      "name": "Example Response",
      "submitted_at": null,
      "manager": null,
      "region": null,
      "country": null,
      "property_type": null,
      "legal_status": null,
      "created_at": "2017-04-17T15:46:13Z",
      "updated_at": "2017-04-17T15:46:13Z",
      "company_fund_id": 12441,
      "survey": {
        "survey_period_opens_on": "2017-04-01T04:00:00Z",
        "survey_period_closes_on": "2017-09-30T04:00:00Z"
      }
    }
  ]
}
```
## Create Response

`POST /api/responses`

Note: Since it is likely your user has already started a response for the company or fund in your application you should first allow them to select an existing response to add asset data to using <a href="#list-responses">list responses</a>. If a suitable response is not listed, you can create a new one for them using this interface.

```shell
$ curl -X POST -d name='Example Response' -d manager='Test Manager' https://api-sandox.gresb.com/api/responses -H "Authorization: Bearer $TOKEN"
{
  "id": 2603,
  "survey_date": "2017",
  "name": "Example Response",
  "submitted_at": null,
  "manager": null,
  "region": null,
  "country": null,
  "property_type": null,
  "legal_status": null,
  "created_at": "2017-04-17T15:46:13Z",
  "updated_at": "2017-04-17T15:46:13Z",
  "company_fund_id": 12441,
  "survey": {
    "survey_period_opens_on": "2017-04-01T04:00:00Z",
    "survey_period_closes_on": "2017-09-30T04:00:00Z"
  }
}
```

## Get Response

`GET /api/responses/:id`

Gets the details of an existing response. Currently returns the same data as list response.

```shell
$ curl https://api.gresb.com/api/responses/2603 -H "Authorization: Bearer $TOKEN"
{
  "id": 2603,
  "survey_date": "2017",
  "name": "Example Response",
  "submitted_at": null,
  "manager": null,
  "region": null,
  "country": null,
  "property_type": null,
  "legal_status": null,
  "created_at": "2017-04-17T15:46:13Z",
  "updated_at": "2017-04-17T15:46:13Z",
  "company_fund_id": 12441,
  "survey": {
    "survey_period_opens_on": "2017-04-01T04:00:00Z",
    "survey_period_closes_on": "2017-09-30T04:00:00Z"
  }
}
```

## Update Response

`PUT /api/responses/:id`

You may update an existing response using it's `id`.

```shell
$ curl -X PUT -d name='New Name' -d manager='New Manager' https://api.gresb.com/api/responses/2603 -H
"Authorization: Bearer $TOKEN"
{
  "id": 2603,
  "survey_date": "2017",
  "name": "New Name",
  "submitted_at": null,
  "manager": "New Manager",
  "region": null,
  "country": null,
  "property_type": null,
  "legal_status": null,
  "created_at": "2017-04-17T15:46:13Z",
  "updated_at": "2017-04-17T16:10:39Z",
  "company_fund_id": 12441,
  "survey": {
    "survey_period_opens_on": "2017-04-01T04:00:00Z",
    "survey_period_closes_on": "2017-09-30T04:00:00Z"
  }
}
```