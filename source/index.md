---
title: API Reference

language_tabs:

- http
- shell

toc_footers:
  - <a href='http://github.com/tripit/slate'>Documentation Powered by Slate</a>

includes:
  - errors
  - data-dictionary.md

search: true
---

# Introduction

<aside class="notice">
The GRESB API is in the early stages of development.  All documentation below is subject to change.  If you have any feedback regarding our API or the documentation, we would love to hear it! Feel free to submit your comments or questions here
</aside>

>**Endpoint:**

```
https://api.gresb.com
```

GRESB will provide an Application Programming Interface (API) web service to facilitate the entry of asset level data into the GRESB survey.  

The API complies with [REST](http://en.wikipedia.org/wiki/Representational_state_transfer) protocol.  It uses HTTP response codes to report errors, and responds to the HTTP methods detailed below.  Data is accepted in JSON format and responses are returned in JSON.  The API uses [OAuth 2.0](http://tools.ietf.org/html/rfc6749) for authorization.  It will also provide test-mode access keys to allow users to explore the API without altering data.  

GRESB strives to keep asset level data consistent, whether it is received via the API, the excel upload, or is entered directly.  For this reason, GRESB offers a data dictionary to assist with formatting.  In rare cases, GRESB may restrict access to specific data fields to avoid redundant data.  

The GRESB API uses four basic HTTP verbs; each communicates a unique request

     <table>      <tbody>        <tr>          <th class="methodCell">Methods:</th>        </tr>        <tr>          <th>POST</th>          <td>This method creates an item </td>        </tr>        <tr>          <th>PUT</th>          <td>This method updates an item</td>        </tr>        <tr>          <th class="changelogCell">GET</th>          <td>This method reads an item</td>        </tr>        <tr>          <th class="changelogCell">DELETE</th>          <td>This method deletes an item. </td>        </tr>      </tbody>    </table>
# Authorization

>The key below can be used to access the API test environment. 

The GRESB API uses OAuth 2.0 protocol to securely authorize accounts.  More information on authorization will be coming soon.


HTTP Basic Auth is used for our test environment.  You can access the API test environment at any point using the access key provided to the right. 
 
# Basic Operations

**The API gives you the ability to upload all asset level data in bulk, using JSON.  After uploading, every asset will be assigned an unique ID and can be edited individually 
using this ID.  All commands are based on the HTTP methods outlined by rest protocol.**  

## Parameters


<table>
  <thead>
    <tr>
       <th>Parameter</th>
       <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>response_id</td>
      <td>Integer. Specific to the survey response.  Each company/fund will receive a new response id at the beginning of a survey period </td>
    </tr>
    <tr>
      <td>building_id</td>
      <td>Integer.  The designated identifier for an asset. When updating an asset, this id <u>must</u> be included.</td>
    </tr>
    <tr>
      <td>partner’s_id</td>
      <td>String. Client-side identifier for an asset.  This is ignored by the GRESB database, and is solely intended for your identification.</td>  
    </tr>
      <td>Data Fields: e.g. asset_name, EN_RSM_MAN_TLE_ABS2014</td>
      <td>Integer or String.  Designates data to its correct field.  See the <a href=“#data-dictionary”>data dictionary</a> for a complete reference.
  </tbody>
</table>


## Account Level

>Request returns a list of companies or funds associated with your account.

```shell
$ curl https://api.gresb.com/api/responses \
-u *auth key*
```


```http
GET /api/responses HTTP/1.1
Host: api.gresb.com
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



After authentication, you will receive a list of funds/companies associated with your account, each with a survey response ID.  The response IDs apply to the current response period.  You can access your account’s companies/funds and response IDs at any point using the method below.

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
    <tr>
      <td>building_id</td>
      <td>Integer.  The designated identifier for an asset. When updating an asset, this id <u>must</u> be included.</td>
    </tr>
    <tr>
      <td>partner’s_id</td>
      <td>String. Client-side identifier for an asset.  This is ignored by the GRESB database, and is solely intended for your identification.</td>  
    </tr>
      <td>Data Fields: e.g. asset_name, EN_RSM_MAN_TLE_ABS2014</td>
      <td>Integer or String.  Designates data to its correct field.  See the <a href=“#data-dictionary”>data dictionary</a> for a complete reference.
  </tbody>
</table>





## Response Level

###GET
Using the GET method, you can receive a list of all assets uploaded to a response or a list of all asset level data uploaded to a response.  Both requests will return building_id codes.

<br>

>This request returns a list of assets uploaded to a survey response

```shell
$ curl https://api.gresb.com/api/responses/2315/asset_level_data/buildings \
-u *auth key*
```

HTTP REQUEST:

`GET  /api/responses/(response_id)/asset_level_data/buildings`

**Parameters**

* response_id


</table>

<br>
<br>


>This request returns all asset level data uploaded to a survey response, organized by asset

```shell
$ curl https://api.gresb.com/api/responses/2315/asset_level_data/buildings \
-u *auth key*
```


HTTP REQUEST:

`GET /api/responses/(response_id)/asset_level_data`

**Parameters:**

* response_id

<br>
<br>

>This request will update or add asset level data to a response.  When updating an asset, be sure to use the correct building_id

```shell
$ curl https://api.gresb.com/api/responses/2315/asset_level_data \
-u *auth key*: \ 
-X PUT \
-H "Content-Type: application/json" \
-d { 

}
```
----

###PUT & POST

The PUT method is used to update, or add to a survey responses asset data.  It is important to avoid uploading duplicate assets when using this method.  The best way to avoid this is that, when updating,  ensure that each asset is assigned the correct building id codes.  The POST method will replace all previous data uploaded by your account with the current upload.  This will create new building ids for all assets.  

 
HTTP REQUEST:

`PUT /api/responses/(response_id)/asset_level_data`

**Parameters:**

* response_id
* building_id
* partner's_id
* [Data Fields](#data-dictionary) 

>This request will override all previous data with the JSON upload. Each asset in this request will receive a unique building_id


```shell
$ curl https://api.gresb.com/api/responses/2315/asset_level_data \
-u *auth key*: \ 
-X POST \
-H "Content-Type: application/json" \
-d { 

}
```

<br>
<br>
<br>

HTTP REQUEST:

`POST /api/responses/(response_id)/asset_level_data`

**Parameters:**

* response_id
* partner's_id
* [Data Fields](#data-dictionary) 

<br>
<br>
<br>

>This request returns the status of your response on the asset level


```shell
$curl https://api.gresb.com/api/responses/2315/asset_level_data/status \
-u *auth key*
```

>Response:

```json
{
  "object": "list",
  "has_more": false,
  "error": [
   {
	"building_id":2355745342,
	"partner’s identifier": "asset 1",
	"EN_[pt]_MAN_BCD_TOT2014": "a3433543",
	"message": "value must be a positive integer"
   },
   {
	"building_id": 5756453454,
	"partner's_identifier": "asset 44",
	"asset_name":"",
	"message": "mandatory field, must be a string",
	"asset_address":"",
	"message": "mandatory field, must be a string"
    } 
  ]
}
```

----

###Status

To check the status of a response: 

HTTP Request

`GET: /responses/(response_id)/asset_level_data/status`

**Parameters**

* response_id
	

## Asset Level

# Versioning



