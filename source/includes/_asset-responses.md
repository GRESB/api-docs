# Asset Level Data


## List Assets

`GET /api/responses/:response_id/asset_level_data/buildings`

Using the GET method, you can receive a list of all assets uploaded to a response or a list of all asset level data uploaded to a response.  Both requests will return building_id codes.

>This request returns a list of assets uploaded to a survey response

```shell
$ curl https://api.gresb.com/api/responses/2315/asset_level_data/buildings \
-H 'Authorization: Bearer ed4cf25331202fc7de448926b0e165cc9aa8fa49c9dd751dca4a74e39a6acdf4' \
```

>Response

```http
HTTP/1.1 200 OK
Content-Type: application/json
{
  "object": "list",
  "has_more": false,
   {
	"building_id":2355745342,
	"partner’s identifier": "asset 1",
	"asset_name": "A Building"
	"asset_address": "12345 Main Street New York, NY, USA",
	"error": "none"
   },
   {
	"building_id": 5756453454,
	"partner's_identifier": "asset 44",
	"asset_name":"Another Building",
	"asset_address": "900 Flat Street, Antarctica",
	"error": "none"
    } 
  ]
}
```


>This request returns all asset level data uploaded to a survey response, organized by asset

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
   {
	"building_id":2355745342,
	"partner’s identifier": "asset 1",
	"asset_name": "A Building",
	"asset_address": "12345 Main Street New York, NY, USA",
	"en_man_bcf_abs": 45657,
	"en_man_bcf_abs": 589708,
	"en_man_bcf_cov": 45435,
	"en_man_bcf_tot": 96783,
	"en_man_bcd_abs": 678865
   },
   {
	"building_id": 5756453454,
	"partner's_identifier": "asset 44",
	"asset_name": "Another Building",
	"asset_address": "900 Flat Street, Antarctica",
	"en_man_bcf_abs": 35342,
	"en_man_bcf_abs": 978675,
	"en_man_bcf_cov": 12376,
	"en_man_bcf_tot": 45444,
	"en_man_bcd_abs": 15678,
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

The PUT method is used to update, or add to a survey responses asset data.  It is important to avoid uploading duplicate assets when using this method.  The best way to avoid this is to ensure that each asset is assigned the correct building id code when updating.  The POST method will replace all previous data uploaded by your account with the current upload.  This will create new building ids for all assets.  


```shell
$ curl https://api.gresb.com/api/responses/2315/asset_level_data \
-u *auth key*: \ 
-X PUT \
-H "Content-Type: application/json" \
-H 'Authorization: Bearer ed4cf25331202fc7de448926b0e165cc9aa8fa49c9dd751dca4a74e39a6acdf4' \

-d { 
      {
	"building_id": 5756453454,
	"partner's_identifier": "asset 44",
	"asset_name": "Another Building",
	"asset_address": "900 Flat Street, Antarctica",
	"en_man_bcf_abs": 35342,
	"en_man_bcf_abs": 978675,
	"en_man_bcf_cov": 12376,
	"en_man_bcf_tot": 45444,
	"en_man_bcd_abs": 15678,
       },
       {
	"building_id":2355745342,
	"partner’s identifier": "asset 1",
	"asset_name": "A Building",
	"asset_address": "12345 Main Street New York, NY, USA",
	"en_man_bcf_abs": 45657,
	"en_man_bcf_abs": 589708,
	"en_man_bcf_cov": 45435,
	"en_man_bcf_tot": 96783,
	"en_man_bcd_abs": 678865,
       }
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
      <td>Data Fields: e.g. asset_name, en_RSM_man_TLE_abs</td>
      <td>Integer or String.  Designates data to its correct field.  See the <a href=#data-dictionary>data dictionary</a> for a complete reference.
  </tbody>
</table>

>This request will override all previous data with the JSON upload. Each asset in this request will receive a unique building_id


```shell
$ curl https://api.gresb.com/api/responses/2315/asset_level_data \
-X POST \
-H 'Authorization: Bearer ed4cf25331202fc7de448926b0e165cc9aa8fa49c9dd751dca4a74e39a6acdf4' \

-H "Content-Type: application/json" \
-d {
      {
	"partner's_identifier": "asset 44",
	"asset_name": "Another Building",
	"asset_address": "900 Flat Street, Antarctica",
	"en_man_bcf_abs": 35342,
	"en_man_bcf_abs": 978675,
	"en_man_bcf_cov": 12376,
	"en_man_bcf_tot": 45444,
	"en_man_bcd_abs": 15678,
       },
       {
	"partner’s identifier": "asset 1",
	"asset_name": "A Building",
	"asset_address": "12345 Main Street New York, NY, USA",
	"en_man_bcf_abs": 45657,
	"en_man_bcf_abs": 589708,
	"en_man_bcf_cov": 45435,
	"en_man_bcf_tot": 96783,
	"en_man_bcd_abs": 678865,
       }
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
      <td>Data Fields: e.g. asset_name, en_RSM_man_TLE_abs</td>
      <td>Integer or String.  Designates data to its correct field.  See the <a href=#data-dictionary>data dictionary</a> for a complete reference.
  </tbody>
</table>



----
