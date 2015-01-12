# Errors & Warnings
## HTTP Status
Standard HTTP statue codes indicate success or failure of an API request. 

* Codes in the 200s indicate success
* Codes in the 400s indicate a user side error
* Codes in the 500s indicate an error with GRESB's servers

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
		<td>Authentication credentials were missing or invalid.  See <a href='#api-authorization'>authorization</a> for more assistance</td>
	</tr>
	<tr>
		<td>403</td>
		<td>Forbidden</td>
		<td>The request was refused because your account did not 
      receive permission to complete this action or exceeded rate limits.
		</td>
	</tr>
	<tr>
		<td>404</td>
		<td>Not Found</td> 
		<td>The requested item does not exist</td>
	</tr>
  <tr>
    <td>422</td>
    <td>Unprocessable Entity</td> 
    <td>The request to create or update a resource resulted in validation errors. Error details are returned in the response body. See Validation Errors</td>
  </tr>	<tr>
		<td>500, 502, 504</td>
		<td>Serverside Error</td>
		<td>An error has occurred on our servers.  Please wait a few minutes and try again</td>
	</tr>
</table>

## Validation Errors

When a resource fails validation it will contain an `errors` key containing an object showing details
for each attribute. Each attribute with an error will have a key the object and an array of errors. 
Since we don't know the language you present to your users we normally return the error details as 
keywords followed a possible parameter (seperated by a single space). You will want to translate these messages before presenting them to your users. Additionally an key called `base` may be set
with errors that are not specific to a specific attribute. Not: Errors not shown in the table below may 
occaisionally be returned and should just be shown to the user.

```json
{
  "id": 3138,
  "asset_size": -1000
  "errors": {
    "asset_size": ["greater_than_or_equal_to 0"]
  }
}
```

Error                      | Parameter    | Description
---------------------------|--------------|------------------
accepted                   |              | A boolean field must be set
blank                      |              | Cannot be blank
present                    |              | Must be blank
confirmation               |              | Value must match %{attribute}'s value
empty                      |              | Cannot be blank or an empty collection
equal_to                   | count        | Value must be exactly #{count}
even                       |              | Must be even
exclusion                  |              | The value is one of the attributes excluded values
greater_than               | count        | Must be greater than %{count}
greater_than_or_equal_to   | count        | Must be greater than or equal to %{count}
inclusion                  |              | Must be one of the attributes permitted value
invalid                    |              | Is not a valid value
less_than                  | count        | Must be less than %{count}
less_than_or_equal_to      | count        | Must be less than or equal to %{count}
not_a_number               |              | Must be a number
not_an_integer             |              | Must be an integer
odd                        |              | Must be odd
record_invalid             |              | There is some unspecified problem with the record. More details me be present on other attributes
restrict_dependent_destroy | record       | The record could not be deleted because a %{record} depends on it
taken                      |              | The value must be unique and has already been used in this context
too_long                   | count        | The value is too long. It must be at most %{count} characters
too_short                  | count        | The value is too short. It must be at least %{count} characters
wrong_length               | count        | The value is the wrong length. It must be exactly %{count} characters
other_than                 | count        | The value is the wrong length. It must not be %{count} characters
not_negative               |              | Must be greater than zero
months_in_year             |              | Must be within a year (12 months)
percentage_lte_100         |              | Must be less than or equal to 100%
waste_lte_100              |              | Total waste disposal must be less than or equal to 100%
not_negative               |              | Must be greater than zero
