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
not_negative               |              | Must be negative
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
