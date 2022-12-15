# Portfolio Data

With the introduction of Portfolio-level endpoints, users associated with a data partnership can now submit portfolio-level data on behalf of the reporting entities and fill in the Real Estate Assessment in full. Mind that portfolio-level APIs do not serve all the functionalities in the Portal, such as aggregation, validation, and submission; meaning that API users should still make use of the Portal interface for access to full features.

Portfolio data needs to be submitted per indicator, and requires many requests to submit one full assessment. Each portfolio-level variable corresponds to their own endpoint, and all portfolio-level endpoints are situated in `v0`:

`/api/v0/entities/{entity_id}/responses/{response_id}/values/{variable}`

In order to fetch the full list of variables, along with their description, data type, and accepted values, a request to `/api/v0/entities/{entity_id}/responses/{response_id}/values` **PLACEHOLDER** should be made. After performing a GET request to learn the variable's current value and lock version, in most cases a POST requests can be sent in a payload such as like this:

`{
	"lock_version": "1",
	"value": "1"
}`

## GET /lists
Requests info on all the picklists.

```shell
curl https://api.gresb.com/api/v0/lists \
```

> Response:

```json
[
    {
        "slug": "equity_asset_type",
        "name": "All current real estate property types",
        "updated_at": "2020-03-20T14:10:13.026Z"
    },
    {
        "slug": "location",
        "name": "All current locations from locations table",
        "updated_at": "2020-04-01T11:07:03.671Z"
    },
    {
        "slug": "scheme name 2020",
        "name": "Schema name from 2020",
        "updated_at": "2021-07-01T12:37:43.150Z"
    },
    {
        "slug": "scheme name",
        "name": "Schema name",
        "updated_at": "2021-03-04T10:09:54.671Z"
    },
    {
        "slug": "country",
        "name": "Country (ISO3166)",
        "updated_at": "2019-04-11T15:30:36.132Z"
    },
    // ... trimmed for brevity ...
] 
```

## GET /lists/:slug
Requests info on a specific picklist and lists all the available picklist items.

```shell
curl https://api.gresb.com/api/v0/lists/:slug \
```

> Response: 

```json
{
    "slug": "country",
    "name": "Country (ISO3166)",
    "updated_at": "2019-04-11T15:30:36.132Z",
    "items": [
        {
            "label": "Afghanistan",
            "value": "AF"
        },
        {
            "label": "Albania",
            "value": "AL"
        },
        {
            "label": "Algeria",
            "value": "DZ"
        },
    	// ... trimmed for brevity ...
	]
}
```

## GET /entities/{entity_id}/responses
Requests the assessment responses associated with the entity.

```shell
curl https://api.gresb.com/api/v0/entities/{entity_id}/responses \
  -H "Authorization: Bearer $ACCESS_TOKEN"
```

> Response:

```json
[
    {
        "id": {response_id},
        "entity_id": {entity_id},
        "business_line": "real_estate",
        "survey_year": {Survey Year},
        "name": "API Test Entity",
        "manager": "GRESB",
        "status": "in_progress",
        "survey_open": true,
        "assessment_type": "real_estate",
        "percent_completed": 65,
        "created_at": "2022-11-29T11:39:12.267Z",
        "updated_at": "2022-12-07T08:53:43.468Z"
    },
    {
        "id": {response_id},
        "entity_id": {entity_id},
        "business_line": "real_estate",
        "survey_year": {Survey Year},
        "name": "API Test Entity",
        "manager": "GRESB",
        "status": "new",
        "survey_open": true,
        "assessment_type": "sfdr_re",
        "percent_completed": 0,
        "created_at": "2022-12-08T08:48:18.399Z",
        "updated_at": "2022-12-08T08:48:20.967Z"
    }
]
```

## GET /entities/{entity_id}/responses/{response_id}
Requests the data on the assessment response.

```shell
curl https://api.gresb.com/api/v0/entities/{entity_id}/responses/{response_id} \
  -H "Authorization: Bearer $ACCESS_TOKEN"
```

> Response:

```json
[
    {
        "id": {response_id},
        "entity_id": {entity_id},
        "business_line": "real_estate",
        "survey_year": {Survey Year},
        "name": "API Test Entity",
        "manager": "GRESB",
        "status": "in_progress",
        "survey_open": true,
        "assessment_type": "real_estate",
        "percent_completed": 65,
        "created_at": "2022-11-29T11:39:12.267Z",
        "updated_at": "2022-12-07T08:53:43.468Z"
    }
]
```

## GET /entities/{entity_id}/responses/{response_id}/values **PLACEHOLDER**
Requests the full list of variables, their descriptions, data types, and values. Refer to the information in this endpoint to get an overview of response variables.

```shell
curl https://api.gresb.com/api/v0/entities/{entity_id}/responses/{response_id}/values \
  -H "Authorization: Bearer $ACCESS_TOKEN"
```

> Response: **PLACEHOLDER**

```json
{
	"variable": "RC_2_GAV",
	"description": "What was the gross asset value (GAV) of the portfolio at the end of the reporting year in millions?",
	"data_type": "Number",
	"min_value": null,
	"max_value": null,
	"values": null
},
{
	"variable": "RC_4_COUNTRY",
	"description": "Portfolio predominant location",
	"data_type": "Picklist",
	"min_value": null,
	"max_value": null,
	"values": "<location>"
},
… /trimmed for brevity
{
	"variable": "PO_1_A",
	"description": "Does the entity have a policy/policies on environmental issues?",
	"data_type": "Radio",
	"min_value": null,
	"max_value": "2",
	"values": "1 = Yes, 2 = No"
},
… /trimmed for brevity
```

## GET /api/v0/entities/{entity_id}/responses/{response_id}/values/{variable}
Requests the data for the variable in the endpoint.

```shell
curl https://api.gresb.com/api/v0/entities/{entity_id}/responses/{response_id}/values/{variable} \
  -H "Authorization: Bearer $ACCESS_TOKEN"
```

> Response:

```json
{   
	"variable": {variable},
    "value": "1",
    "lock_version": "1",
    "created_at": "2022-11-29T12:59:14.208Z",
    "updated_at": "2022-12-02T19:18:01.879Z"
}
```

## POST /api/v0/entities/{entity_id}/responses/{response_id}/values/{variable}
Updates the variable in the endpoint. `null` can be sent to clear the value or answer to an indicator.

```shell
curl https://api.gresb.com/api/v0/entities/{entity_id}/responses/{response_id}/values/{variable} \
  -H "Authorization: Bearer $ACCESS_TOKEN" \
  -H "Content-Type: application/json" \
  -d @- <<JSON
```
> Request:

```json
{
    "lock_version": "1",
    "value": "1"
}
```

> Response:

```json
{
    "id": 12345678,
    "analysis_id": 12345,
    "variable": {variable},
    "value": "1",
    "created_at": "2022-12-06T13:44:42.493Z",
    "updated_at": "2022-12-06T13:45:19.920Z",
    "validator_id": null,
    "validation_status": null,
    "secondary_validation_status": null,
    "secondary_validator_id": null,
    "reachable_on_submit": null,
    "raw_value": null,
    "decimal_separator": null,
    "validatable": false,
    "session_ident": null,
    "lock_version": 1,
    "validation_color": null,
    "validation_escalate": false,
    "validator_validation_date": null,
    "secondary_validation_date": null,
    "automatic_validation": false,
    "similar_value_id": null,
    "similar_value_count": null
}
```