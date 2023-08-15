# Portfolio Evidence

Evidence uploads are either hyperlinks or files, depending on available options per indicator. It is possible to submit more than one evidence per indicator.

Multiple steps need to be taken to submit an evidence item and it is not possible to combine these steps within one request. Similar to the UI, each evidence submission has to indicate file type, a valid URL pointing to the evidence, and notes. An additional step can be taken to change the setting for sharing the evidence document to investors. This setting is not applicable when submitting evidence as a hyperlink (shared with investors by defualt).

## Upload Hyperlink as Evidence

In order to upload a hyperlink as evidence, a total of 3 requests should be send. First indicate file type, secondly post the hyperlink URL, and thirdly share any evidence notes to indicate where in the hyperlink the supporting information can be found.

In this example, let us share a public URL as evidence for the indicator PO1 in Management > Policies.

<aside class="warning">
Mind that PO1 has a main question which can be answered as "Yes" or "No". We are submitting the evidence under the main answer "Yes", and not for any of the checkbox variables that are presented under "Yes".
</aside>

<aside class="warning">
The number at the end of the endpoint indicates the evidence number. This number is increased incrementally as you add multiple evidence hyperlinks to an indicator {variable}. In the following examples the first evidence item will be hyperlink, and second one will be file. Even if we remove the hyperlink evidence the endpoint and the item number would remain the same for the evidence file as reference.
</aside>

## POST values/{variable} - Indicate Evidence Type for Hyperlink
Indicate evidence type as hyperlink by sending `H` as the value.

```shell
curl https://api.gresb.com/api/v0/entities/{entity_id}/responses/{response_id}/values/PO_1_A1_EVD_TYPE_1 \
  -H "Authorization: Bearer $ACCESS_TOKEN" \
  -H "Content-Type: application/json" \
  -d @- <<JSON
```

> Request:

```json
{
	"lock_version": "1",
	"value": "H"
}
```

> Response:

```json
{
    "id": 12345678,
    "analysis_id": 12345,
    "variable": "PO_1_A1_EVD_TYPE_1",
    "value": "H",
    "created_at": {date},
    "updated_at": {date},
    "validator_id": null,
    "validation_status": null,
    "secondary_validation_status": null,
    "secondary_validator_id": null,
    "reachable_on_submit": true,
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

## POST values/{variable} - Indicate the Hyperlink URL
Post the hyperlink for the evidence document as a string.

```shell
curl https://api.gresb.com/api/v0/entities/{entity_id}/responses/{response_id}/values/PO_1_A1_EVD_LINK_1 \
  -H "Authorization: Bearer $ACCESS_TOKEN" \
  -H "Content-Type: application/json" \
  -d @- <<JSON
```

> Request:

```json
{
    "lock_version": 1,
    "value": "https://documents.gresb.com/"
}
```

> Response:

```json
{
    "id": 12345678,
    "analysis_id": 12345,
    "variable": "PO_1_A1_EVD_LINK_1",
    "value": "https://documents.gresb.com/",
    "created_at": {date},
    "updated_at": {date},
    "validator_id": null,
    "validation_status": null,
    "secondary_validation_status": null,
    "secondary_validator_id": null,
    "reachable_on_submit": true,
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

## POST values/{variable} - Add Evidence Notes for Hyperlink
Add a note to indicate where the evidence can be found.

```shell
curl https://api.gresb.com/api/v0/entities/{entity_id}/responses/{response_id}/values/PO_1_A1_EVD_NOTES_1 \
  -H "Authorization: Bearer $ACCESS_TOKEN" \
  -H "Content-Type: application/json" \
  -d @- <<JSON
```

> Request:

```json
{
    "lock_version": 1,
    "value": "Our policies on environmental issues can be found within the second report on our public documents page."
}
```

> Response:

```json
{
    "id": 12345678,
    "analysis_id": 12345,
    "variable": "PO_1_A1_EVD_NOTES_1",
    "value": "Our policies on environmental issues can be found within the second report on our public documents page.",
    "created_at": {date},
    "updated_at": {date},
    "validator_id": null,
    "validation_status": null,
    "secondary_validation_status": null,
    "secondary_validator_id": null,
    "reachable_on_submit": true,
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


## Upload File as Evidence

In order to upload a file as evidence, total of 3 requests should be send. First one is to indicate answer name, file type and the URL of the file, second one is to share notes, and final (optional) one to make the file accessible to investors within the Benchmark Report.

In this example, let us upload a PDF document as our **second evidence** for the indicator PO1 in Management > Policies.

<aside class="notice">
To change a file with another one that was already uploaded to the Portal, make a POST request to the <code>PO_1_A1_EVD_DOCID_2</code> endpoint with the document ID. Document ID is identified from the {DOCID} value.
</aside>

## POST /documents - Indicate Evidence Type and URL for File
Evidence documents which are not public hyperlinks can be uploaded to `entities/{entity_id}/responses/{response_id}/documents` endpoint. Answer name, evidence type, and URL are all mandatory fields and should be send within the same request body. Indicate file type as `F`.

```shell
curl https://api.gresb.com/api/v0/entities/{entity_id}/responses/{response_id}/documents \
  -H "Authorization: Bearer $ACCESS_TOKEN" \
  -H "Content-Type: application/json" \
  -d @- <<JSON
```

> Request:

```json
{
    "answer_name": "PO_1_A1_EVD",
    "lock_version": "0",
    "evidence_type": "F",
    "url": "https://gresb-prd-public.s3.amazonaws.com/2022/RE-Documents/Asset_Portal_Validation_Rules.png"
}
```

> Response:

```json
{
    "answer_name": "PO_1_A1_EVD",
    "item_number": 1,
    "evidence_type": "F",
    "report_url": "https://portal.gresb.com/reports/{report_id}/PO_3_A1_EVD/documents/1",
    "variables": {
        "TYPE": {
            "variable": "PO_1_A1_EVD_TYPE_2",
            "value": "F"
        },
        "DOCID": {
            "variable": "PO_1_A1_EVD_DOCID_2",
            "value": "123456"
        },
        "NOTES": {
            "variable": "PO_1_A1_EVD_NOTES_2",
            "value": null
        },
        "SHARE": {
            "variable": "PO_1_A1_EVD_SHARE_2",
            "value": null
        }
    }
}
```

## POST values/{variable} - Add Evidence Notes for File
Add a note to indicate where the evidence can be found.

```shell
curl https://api.gresb.com/api/v0/entities/{entity_id}/responses/{response_id}/values/PO_1_A1_EVD_NOTES_2 \
  -H "Authorization: Bearer $ACCESS_TOKEN" \
  -H "Content-Type: application/json" \
  -d @- <<JSON
```

> Request:

```json
{
    "lock_version": 1,
    "value": "Our policies on environmental issues can be found on page 12 of our ESG Policy Report."
}
```

> Response:

```json
{
    "id": 12345678,
    "analysis_id": 12345,
    "variable": "PO_1_A1_EVD_NOTES_2",
    "value": "Our policies on environmental issues can be found on page 12 of our ESG Policy Report.",
    "created_at": {date},
    "updated_at": {date},
    "validator_id": null,
    "validation_status": null,
    "secondary_validation_status": null,
    "secondary_validator_id": null,
    "reachable_on_submit": true,
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

## POST values/{variable} - Share File with Investors
As opposed to a public hyperlink, a file uploaded to the system is not visible to investors by default. To make the evidence file accessible to investors, set the sharing setting to true by sending `1` as value to the corresponding endpoint.

```shell
curl https://api.gresb.com/api/v0/entities/{entity_id}/responses/{response_id}/values/PO_1_A1_EVD_SHARE_2 \
  -H "Authorization: Bearer $ACCESS_TOKEN" \
  -H "Content-Type: application/json" \
  -d @- <<JSON
```

> Request:

```json
{
    "lock_version": 1,
    "value": 1
}
```

> Response:

```json
{
    "id": 12345678,
    "analysis_id": 12345,
    "variable": "PO_1_A1_EVD_SHARE_2",
    "value": 1,
    "created_at": {date},
    "updated_at": {date},
    "validator_id": null,
    "validation_status": null,
    "secondary_validation_status": null,
    "secondary_validator_id": null,
    "reachable_on_submit": true,
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

## Evidence Delete
Evidence documents can be removed at once with a `DELETE` request which will set the evidence type, URL, notes, and sharing settings to `null` in the corresponding endpoints. 

### DELETE /documents/{item_number}
Send a `DELETE` request to `entities/{entity_id}/responses/{response_id}/documents/{item_number}` with a content body which identifies the answer from which the evidence item should be removed. {item_number} can be traced from the evidence endpoint, or UI. It is also returned in the response body upon [uploading an evidence file](#evidence-upload-post-documents-indicate-file-type-and-url).

As a continuation to our examples, let us delete the hyperlink evidence, evidence item 1 from the indicator PO1. After this, evidence file remains to be the item number 2.

<aside class="notice">
This request removes the evidence from the answer, but keeps it as part of the entity in the Documents & Uploads page, since it may be used on many places in the response and across reporting years.
</aside>

```shell
curl https://api.gresb.com/api/v0/entities/{entity_id}/responses/{response_id}/documents/1 \
  -H "Authorization: Bearer $ACCESS_TOKEN" \
  -H "Content-Type: application/json" \
  -d @- <<JSON
```

> Request:

```json
{
    "answer_name": "PO_1_A1_EVD"
}
```

> Response: 204 No Content.