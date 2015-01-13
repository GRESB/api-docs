# Asset Level Data


## List Assets

Using the GET method, you can receive information about your survey response.

>This request returns your response id

```shell
$ curl https://api.gresb.com/api/responses/2315/asset_level_data \
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
      "created_at": "2015-01-08T20:34:25Z",
      "id": 323,
      "updated_at": "2015-01-08T20:34:25Z"
    }
  ]
}
```

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
      <td>Integer. Specific to the survey response.  </td>
    </tr>
    </tbody>
</table>


>This request will update or add asset level data to a response.  When updating an asset, be sure to use the correct building_id

----

###PUT & POST

The PUT method is used to update or add to a survey response's asset data.  It is important to avoid uploading duplicate assets when using this method.  The best way to avoid this is to ensure that each asset is assigned the correct building id code when updating.  The POST method will replace all previous data uploaded by your account with the current upload.  This will create new building ids for all assets.  


```shell
$ curl https://api.gresb.com/PUT/api/responses/2658/asset_level_data/324 \
-X PUT \
-H "Content-Type: application/json" \
-H 'Authorization: Bearer ed4cf25331202fc7de448926b0e165cc9aa8fa49c9dd751dca4a74e39a6acdf4' \

-d {
  "id": 324,
  "oauth_application_id": 171,
  "created_at": "2015-01-08T20:34:26Z",
  "updated_at": "2015-01-08T20:34:26Z",
  "building_rows": [
    {
      "id": 12694,
      "updated_at": "2015-01-08T20:34:26Z",
      "asset_name": "Another Building",
      "asset_address": "900 Flat Street, Antarctica",
      "en_man_bcf_abs": 978675,
      "en_man_bcf_cov": 12376,
      "en_man_bcf_tot": 45444,
      "partners_id": "asset 44"
    },
    {
      "id": 12693,
      "updated_at": "2015-01-08T20:34:26Z",
      "asset_name": "Another Building",
      "asset_address": "900 Flat Street, Antarctica",
      "en_man_bcf_abs": 978675,
      "en_man_bcf_cov": 12375,
      "en_man_bcf_tot": 45444,
      "partners_id": "asset 43"
    }
  ]
}
```


**PUT**

`PUT /api/responses/(response_id)/asset_level_data HTTP/1.1`

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
      <td>Integer. Specific to the survey response. </td>
    </tr>
    <tr>
      <td>building_id</td>
      <td>Integer. When updating an asset, this id <u>must</u> be included.</td>
    </tr>
    <tr>
      <td>partner’s_id</td>
      <td>String. Client-side identifier for an asset.</td>  
    </tr>
      <td>Data Fields: e.g. asset_name</td>
      <td>Integer or String.  Designates data to its correct field.  See the <a href=#data-dictionary>data dictionary</a> for a complete reference.
  </tbody>
</table>

>This request will override all previous data with the JSON upload. Each asset in this request will receive a unique building_id


```shell
$ curl https://api.gresb.com/api/responses/2656/asset_level_data \
-X POST \
-H 'Authorization: Bearer ed4cf25331202fc7de448926b0e165cc9aa8fa49c9dd751dca4a74e39a6acdf4' \
-H "Content-Type: application/json" \
-d {
  "format": "json",
  "access_token": "b7bdec6e22be4608c77a87de5da8615101ffb1ad1a964e085596dfbe187a3325",
  "buildings": [
    {
      "partners_id": "asset 43",
      "asset_name": "Another Building",
      "asset_address": "900 Flat Street, Antarctica",
      "survey_data": {
        "2012": {
          "en_man_bcf_abs": 35342,
          "en_man_bcd_abs": 15678
        },
        "2013": {
          "en_man_bcf_abs": -978675,
          "en_man_bcf_cov": 12375,
          "en_man_bcf_tot": 45444
        }
      }
    },
    {
      "partners_id": "asset 44",
      "asset_name": "Another Building",
      "asset_address": "900 Flat Street, Antarctica",
      "survey_data": {
        "2012": {
          "en_man_bcf_abs": 35342,
          "en_man_bcd_abs": 15678
        },
        "2013": {
          "en_man_bcf_abs": 978675,
          "en_man_bcf_cov": 12376,
          "en_man_bcf_tot": 45444
        }
      }
    }
  ]
}
```



**POST**

`POST /api/responses/(response_id)/asset_level_data HTTP/1.1`

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
      <td>Integer. Specific to the survey response. </td>
    </tr>
     <tr>
      <td>partner’s_id</td>
      <td>String. Client-side identifier for an asset.</td>  
    </tr>
      <td>Data Fields: e.g. asset_name, en_rsm_man_tle_abs</td>
      <td>Integer or String.  Designates data to its correct field.  See the <a href=#data-dictionary>data dictionary</a> for a complete reference.
  </tbody>
</table>

**DELETE**

A response can be deleted, using the response id.

>The delete command:

```shell
$ curl https://api.gresb.com/api/responses/2656/asset_level_data \
-X DELETE \
-H 'Authorization: Bearer ed4cf25331202fc7de448926b0e165cc9aa8fa49c9dd751dca4a74e39a6acdf4' \
```


----
