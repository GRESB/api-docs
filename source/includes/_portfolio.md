# Portfolio Data

With the introduction of portfolio-level endpoints, users associated with a data partnership can now submit portfolio-level data on behalf of the reporting entities and fill in the Real Estate Assessment in full. Mind that portfolio-level APIs do not serve all the functionalities in the Portal, such as aggregation, validation, and submission; meaning that API users should still make use of the Portal UI for the end-to-end submission flow.

Portfolio data needs to be submitted per indicator, and requires many requests to submit one full assessment. Each portfolio-level variable corresponds to their own endpoint, and all portfolio-level endpoints are situated in `v0`:

`/api/v0/entities/{entity_id}/responses/{response_id}/values/{variable}`

A full list of variables, along with their description, data type, and accepted values can be found in the Excel version of the [Real Estate assessment](https://gresb-prd-public.s3.amazonaws.com/2024/data_partners/2024_real_estate_variables.xlsx). See [introduction](#introduction) for the Postman collection.

After performing a GET request to learn the variable's current value and lock version, a POST request can be sent in a payload, for example:

```json
{
	"lock_version": "1",
	"value": "1"
}
```

## Whitelisted Variables
While in the above file you will find a list of all variables which can be submitted through the portfolio-level endpoints, some of these are prohibited to edit. SCORE_LE_1 is an example of a variable which is not whitelisted as it is used for storing the score of indicator LE1, and therefore requests to alter the value will result in `"error": "Variable could not be found."` being raised with a status `404 not found`.

This also applies to cases where the user directly submits to a base pattern instead of the actual variable. For example in the R1.1 table where % of GAV per property type needs to be reported, we use the base pattern **R_1.1_TBL** in which the property type variable needs to follow the base pattern. Assuming that we want to report % of GAV for property type `Hotel` in the table, we need to submit to **R_1.1_TBL_PGAV_HTL** for a successful request, whereas submitting to R_1.1_TBL would fail.

You can find the variables for property types and countries in the following ways:

- By requesting it from the [/lists](#portfolio-data-get-lists-slug) endpoint

- From [https://portal.gresb.com/about/lists](https://portal.gresb.com/about/lists)

- From the Variable Whitelist below

Refer to our [Variable Whitelist](https://gresb-prd-public.s3.amazonaws.com/2023/data-partners/20230330_portfolio-api-endpoint-variable-whitelist.xlsx) document for a clear overview of all the variables which the users are allowed to interact with.


## GET /lists
Requests info on all the picklist (dropdown options).

```shell
curl https://api.gresb.com/api/v0/lists \
```

> Response:

```json
[
    {
        "slug": "equity_asset_type",
        "name": "All current real estate property types",
        "updated_at": {date}
    },
    {
        "slug": "location",
        "name": "All current locations from locations table",
        "updated_at": {date}
    }
    // ... trimmed for brevity ...
] 
```

## GET /lists/:slug
Requests info on a specific picklist and lists all the available picklist items. In this example we request the picklist items for `country`.

```shell
curl https://api.gresb.com/api/v0/lists/country \
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
        "survey_year": {survey_year},
        "name": "API Test Entity",
        "manager": "GRESB",
        "status": "in_progress",
        "survey_open": true,
        "assessment_type": "real_estate",
        "percent_completed": 65,
        "created_at": {date},
        "updated_at": {date}
    },
    {
        "id": {response_id},
        "entity_id": {entity_id},
        "business_line": "real_estate",
        "survey_year": {survey_year},
        "name": "API Test Entity",
        "manager": "GRESB",
        "status": "new",
        "survey_open": true,
        "assessment_type": "sfdr_re",
        "percent_completed": 0,
        "created_at": {date},
        "updated_at": {date}
    }
]
```

## GET /entities/{entity_id}/responses/{response_id}
Requests info on the specific assessment response.

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
        "survey_year": {survey_year},
        "name": "API Test Entity",
        "manager": "GRESB",
        "status": "in_progress",
        "survey_open": true,
        "assessment_type": "real_estate",
        "percent_completed": 65,
        "created_at": {date},
        "updated_at": {date}
    }
]
```

## GET /entities/{entity_id}/responses/{response_id}/values/{variable}
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
    "created_at": {date},
    "updated_at": {date}
}
```

## POST /entities/{entity_id}/responses/{response_id}/values/{variable}
Updates the variable in the endpoint. `null` can be sent to clear the value of a variable.

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
    "created_at": {date},
    "updated_at": {date},
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
