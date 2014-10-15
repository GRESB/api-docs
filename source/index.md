---
title: API Reference

language_tabs:
  - shell

toc_footers:
  - <a href='http://github.com/tripit/slate'>Documentation Powered by Slate</a>

includes:
  - errors
  - data-dictionary.md

search: true
---

# Introduction

<<<<<<< HEAD
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

**The API gives you the ability to upload all asset level data in bulk, using JSON.  After uploading, every asset will be assigned an unique ID and can be edited individually using this ID.  All commands are based on the HTTP methods outlined by rest protocol.**  

## Account Level
=======
GRESB will provide an Application Programming Interface (API) web service to facilitate the entry of asset level data into the GRESB survey.  

The API complies with REST protocol.  It uses HTTP response codes to report possible errors, and responds to the HTTP commands detailed in this document.  

The API can accept data in JSON, and all responses will be returned in JSON.  

All actions through GRESB's API will be authorized using OAuth 2.0.  Click here for further assistance.

GRESB strives to keep all funds’ asset level data consistent, whether it is received via the API or the asset level excel upload.  For this reason, GRESB offers a data dictionary to assist in the process of formatting data correctly.


# Authentication

> To authorize, use this code:

>>>>>>> FETCH_HEAD

```shell
$ curl https://api.gresb.com/api/responses \
-u *auth key*
```

>the above command returns a JSON response structured like this

```json
{
  "object": "list",
  "has_more": false,
  "data": [
    {
      "country": "Australia",
      "created_at": "2014-06-04T01:17:42Z",
      "id": 9987,
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



HTTP REQUEST:

`GET /api/responses`


<table>
  <thead>
    <tr>
       <th>Parameter</th>
       <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>none</td>
      <td></td>
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
      <td><i>response_</i>id</td>
      <td>Integer. Specific to the survey response.  Each company/fund will receive a new id at the beginning of a response period </td>
    </tr>
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

<table>
  <thead>
    <tr>
       <th>Parameter</th>
       <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><i>response_</i>id</td>
      <td>Integer. Specific to the survey response.  Each company/fund will receive a new response id at the beginning of a survey period </td>
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
      <td>building_id</td>
      <td>Integer.  The designated identifier for an asset. The asset can be updated using this id.  The ids are specific to a survey response, meaning they will not be applicable over multiple years.</td>
    </tr>
    <tr>
      <td>partner’s_id</td>
      <td>String.  Client-side asset identifier.  Ignored by our server</td>
    </tr>
  </tbody>
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

<table>
  <thead>
    <tr>
       <th>Parameter</th>
       <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><i>response_</i>id</td>
      <td>Integer. Specific to the survey response.  Each company/fund will receive a new response id at the beginning of a survey period </td>
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
      <td>building_id</td>
      <td>Integer.  The designated identifier for an asset. The asset can be updated using this id.  The ids are specific to a survey response, meaning they will not be applicable over multiple years.</td>
    </tr>
    <tr>
      <td>partner’s_id</td>
         <td>String. Client-side identifier for an asset.  This is ignored by the GRESB database, and is solely intended for your identification.</td> 
    </tr>
    <tr>
      <td>Data Fields: e.g. asset_name, EN_RSM_MAN_TLE_ABS2014</td>
      <td>Integer or String.  Designates data to its correct field.  See the <a href=#data-dictionary>data dictionary</a> for a complete reference.
  </tbody>
</table>

<br>
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

###PUT & POST

The PUT method is used to update, or add to a survey responses asset data.  It is important to avoid uploading duplicate assets when using this method.  The best way to avoid this is that, when updating,  ensure that each asset is assigned the correct building id codes.  The POST method will replace all previous data uploaded by your account with the current upload.  This will create new building ids for all assets.  


 
HTTP REQUEST:

`PUT /api/responses/(response_id)/asset_level_data`

<table>
  <thead>
    <tr>
       <th>Parameter</th>
       <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><i>response_</i>id</td>
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

<table>
  <thead>
    <tr>
       <th>Parameter</th>
       <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><i>response_</i>id</td>
      <td>Integer. Specific to the survey response.  Each company/fund will receive a new response id at the beginning of a survey period </td>
    </tr>
      <tr>
      <td>partner’s_id</td>
      <td>String. Client-side identifier for an asset.  This is ignored by the GRESB database, and is solely intended for your identification.</td>  
    </tr>
      <td>Data Fields: e.g. asset_name, EN_RSM_MAN_TLE_ABS2014</td>
      <td>Integer or String.  Designates data to its correct field.  See the <a href=“#data-dictionary”>data dictionary</a> for a complete reference.
  </tbody>
</table>


## Asset Level
### HTTP Request


