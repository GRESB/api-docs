# Survey Responses

## Create Response

`POST /api/responses`


## List Responses

>This request returns a list of responses associated with your account

```shell
$ curl https://api.gresb.com/api/responses \
-H 'Authorization: Bearer ed4cf25331202fc7de448926b0e165cc9aa8fa49c9dd751dca4a74e39a6acdf4' \ 
```
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

`GET /api/responses`

Receive a list of funds/companies associated with your account, each with a survey response ID.  The response IDs apply to the current response period.  You can access your account’s companies/funds and response IDs at any point using the method below.

<table>
  <thead>
    <tr>
       <th>Parameter</th>
    </tr>
  </thead>
  <tbody>
    <tr>
	<td>none</td>
    </tr>
  </tbody>
</table>

<table>
  <thead>
    <tr>
       <th>Attribute</th>
       <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>response_id</td>
      <td>Integer. Specific to the survey response.  </td>
    </tr>
    </tbody>
</table>



