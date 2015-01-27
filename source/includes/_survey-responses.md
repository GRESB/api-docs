# Survey Responses

Survey responses are created for each company or fund participating in the GRESB survey. Creating a new response automatically creates a company or fund object if needed or updates an existing one if the same name and manger are used. 


## Fields

Field            | Access       | Notes
-----------------|--------------|------------------
"survey_date"    | required     | Date (Year) of this Survey
"name"           | required     | Name of this company or fund
"manager"        | required     | Name of this Fund's management company
"legal_status"   | optional     | See <a href="https://www.gresb.com/mocks/lists">Legal Status</a> 
"property_type"  | optional     | See <a href="https://www.gresb.com/mocks/lists">Company/Fund Property Types</a> 
"country"        | optional     | See <a href="https://www.gresb.com/mocks/lists">Countries</a>
"id"             | read-only    | Unique ID for the response
"company_fund_id | read-only    | Unique ID for the company/fund
"submitted_at"   | read-only    | Date (ISO8601 date format) of submission if the survey has been submitted null otherwise.
"created_at"     | read-only    | Date (ISO8601 date format) this resource was created
"updated_at"     | read-only    | Date (ISO8601 date format) this resource was last updated
"region"         | read-only    | Inferred from country, See <a href="https://www.gresb.com/about/lists">Region</a>

## Create Response

`POST /api/responses`

Creating a new response for a user is possible. However, it is very likely that we will already have a response available for the current survey year. Your application should have the user choose an existing response to assocation their data with using <a href="#list-responses">list responses</a>.


```shell
$ curl https://api.gresb.com/api/responses \
-H 'Authorization: Bearer ed4cf25331202fc7de448926b0e165cc9aa8fa49c9dd751dca4a74e39a6acdf4' \ 
```


## List Responses

```shell
$ curl https://api.gresb.com/api/responses \
-H 'Authorization: Bearer ed4cf25331202fc7de448926b0e165cc9aa8fa49c9dd751dca4a74e39a6acdf4' \ 
```
`GET /api/responses`

This request returns a list of responses associated with the respondent's account

>Response

```http
HTTP/1.1 200 OK
Content-Type: application/json
{
  "object": "list",
  "has_more": false,
  "data": [
    {
      "country": "Australia",
      "created_at": "2014-06-04T01:17:42Z",
      "response_id": 9987,
      "legal_status": "Non-listed",
      "manager": "Real Estate Group",
      "name": "The Real Estate Residential Fund",
      "property_type": "Residential",
      "region": "Oceania",
      "submitted_at": "2014-06-30T03:58:39Z",
      "survey_date": "2014",
      "updated_at": "2014-08-29T01:52:46Z"
    },
    {
      "country": "Australia",
      "created_at": "2014-06-04T01:17:44Z",
      "id": 9988,
      "legal_status": "Listed",
      "manager": "Real Estate Group",
      "name": "The Real Estate Diversified Fund",
      "property_type": "Diversified - Office/Retail",
      "region": "Oceania",
      "submitted_at": "2014-10-09T20:27:18Z",
      "survey_date": "2014",
      "updated_at": "2014-10-09T20:27:18Z"
    }
  ]
}
	
```

