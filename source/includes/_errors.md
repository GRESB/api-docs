# Errors & Warnings

## Validation Errors

When a resource fails validation it will contain an `errors` key containing an object showing details
for each attribute. Each attribute with an error will have a key, an object, and an array of errors.
Since we don't know the language you present to your users we normally return the error details as
keywords followed by a possible parameter (separated by a single space). You will want to translate these messages before presenting them to your users. Additionally a key called `base` may be set
with errors that are not unique to a specific attribute.

Errors not shown in the table below may occasionally be returned and should be shown, as is, to the user.

```json
{
  "id": 3138,
  "asset_size": -1000
  "errors" {
    "asset_size": ["greater_than_or_equal_to 0"]
  }
}
```

Error                      | Parameter    | Description
---------------------------|--------------|------------------
accepted                   |              | A boolean field must be set
asset_id_unique_per_upload |              | An asset's partners_id field must uniquely identify it within its data set
asset_gt_common_and_max    |              | Asset Size cannot be less than the sum of Common and the greater of either Landlord or Tenant areas
asset_size_too_big         |              | Asset Size cannot be greater than the sum of Common, Landlord, and Tenant areas
blank                      |              | Cannot be blank
confirmation               |              | Value must match %{attribute}'s value
cov_lt_tot                 |              | Maximum Coverage must be greater than or equal to Data Coverage
cov_value_required         |              | All fields (value, max coverage, and total coverage) must be provided if any are provided
empty                      |              | Cannot be blank or an empty collection
equal_to                   | count        | Value must be exactly #{count}
even                       |              | Must be even
exclusion                  |              | The value is one of the attributes excluded values
field_invalid              |              | The field name is not valid
greater_than               | count        | Must be greater than %{count}
greater_than_or_equal_to   | count        | Must be greater than or equal to %{count}
inclusion                  |              | Must be one of the attributes permitted value
indirect_value_not_allowed |              | You cannot provide this value for an indirectly managed asset as there is operational control
invalid                    |              | Is not a valid value
less_than                  | count        | Must be less than %{count}
less_than_or_equal_to      | count        | Must be less than or equal to %{count}
managed_value_not_allowed  |              | You cannot provide this value for a directly managed asset as there is no operational control
months_in_year             |              | Must be within a year (12 months)
must_be_ynn                |              | Must be "Y" or "N" if provided
not_a_number               |              | Must be a number
not_an_integer             |              | Must be an integer
odd                        |              | Must be odd
other_than                 | count        | The value is the wrong length. It must not be %{count} characters
percentage_lte_100         |              | Must be less than or equal to 100%
present                    |              | Must be present
record_invalid             |              | There is some unspecified problem with the record. More details me be present on other attributes
reporting_size_lt_total    |              | The sum of the common, tenant, and whole-building sizes must be less than or equal to the total size
restrict_dependent_destroy | record       | The record could not be deleted because a %{record} depends on it
shared_size_lt_total       |              | Shared asset size must be less than or equal to the total size
shared_size_too_big        |              | Shared Services cannot be greater than the sum of Common, Landlord, and Tenant areas
taken                      |              | The value must be unique and has already been used in this context
too_long                   | count        | The value is too long. It must be at most %{count} characters
too_short                  | count        | The value is too short. It must be at least %{count} characters
waste_alloc                |              | Waste management data cannot be provided for both Managed and Indirectly Managed columns
waste_diverted_lte_100     |              | The sum of the diverted waste streams must be less than or equal to 100%
waste_lte_100              |              | The sum of waste disposal routes must be less than or equal to 100%
whole_equals_asset_size    |              | Any provided Whole Building Size must be the same as the Asset Size
wrong_length               | count        | The value is the wrong length. It must be exactly %{count} characters
year_format                |              | Year must be a four digit positive number
