# Errors

>This is an example error response structured in JSON:


```http
HTTP/1.1 202 completed,
Content-Type: application/json
{
  "object": "list",
  "has_more": false,
  "error":[
   {
     "building_id": 24423412251334534,
     "partner’s_identifier":  "asset 3",
     "GHG_RSM_S2_ABS2014":  -345,
     "message":  "must be at greater or equal to 0",
     "value":  -30
    }
  ]
}


```

In order to ensure the accurate upload of asset level data, after a submission, the user will receive an HTTP response code, as well as a JSON file with further information outlining all data related errors.  The response body will clearly indicate which data points are in error, as well providing information as to why the data was not accepted.  For information about specific fields, as well as further assistance with errors, see the data dictionary.  

Data related errors will often result from data that is incomplete or not within the parameters of a data field.  They can also result from attempting to assign multiple assets to the same address, or attempting to edit variable fields that are not assigned to the account.  

HTTP response codes indicate success or failure of an API request. Generally, codes in the 200s indicate success, codes in the 400s indicate a user side error, and codes in the 500s indicate an error with GRESB's servers.
<table>
	<tr class="topRow">
		<th class="changelogCell">Code</th>
		<th class="changelogCell">Text</th >
		<th class="description">Description</th>
	</tr >
	<tr>
		<td>200</td>
		<td>OK</td>
		<td>Command was a success</td>
	</tr> 
	<tr>
		<td id="202">202</td>
		<td>Accepted</td>
		<td>Command was a success and a new resource has been created</td>
	</tr>
	<tr>
		<td>400</td>
		<td>Bad Request</td>
		<td>The request was invalid, often there is a missing parameter. An accompanying error message with further information may be provided</td>
	</tr>
	<tr>
		<td>401</td>
		<td>Unauthorized</td>
		<td>Authentication credentials were missing or invalid.  See [authorization](#authorization) for more assistance</td>
	</tr>
	<tr>
		<td>403</td>
		<td>Forbidden</td>
		<td>The request was refused because your account did not receive permission to complete this action
		</td>
	</tr>
	<tr>
		<td>404</td>
		<td>Not Found</td> 
		<td>The requested item does not exist</td>
	</tr>
	<tr>
		<td>500, 502, 504</td>
		<td>Serverside Error</td>
		<td>An error has occurred on our servers.  Please wait a few minutes and try again</td>
	</tr>
</table>
