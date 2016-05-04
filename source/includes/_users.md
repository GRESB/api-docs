# Users

Almost every aspect of the site is tied to an authenticated user.

## Fields
<table>
  <thead>
    <tr><td width='140'>Field</td><td width='80'>Access</td><td>Notes</td></tr>
  </thead>
  <tbody>
    <tr><td><code>id</code></td><td>read-only</td><td>Unique ID for the user.
    <tr><td><code>name</code></td><td>read-only</td><td>The best name to show for this user.</td></tr>
    <tr><td><code>username</code></td><td>optional</td><td>A unique username used for login.</td></tr>
    <tr><td><code>email</code></td><td>optional</td><td>A email address used for notifications.</td></tr>
    <tr><td><code>full_name</code></td><td>optional</td><td></td></tr>
    <tr><td><code>job_title</code></td><td>optional</td><td></td></tr>
    <tr><td><code>organization</code></td><td>optional</td><td></td></tr>
    <tr><td><code>telephone</code></td><td>optional</td><td></td></tr>
    <tr><td><code>address</code></td><td>optional</td><td></td></tr>
    <tr><td><code>country</code></td><td>optional</td><td>Country Code (ISO 3166-1 alpha-2)</td></tr>
    <tr><td><code>status</code></td><td>optional</td><td>`pending` - This user has been invited but has not yet accepted. `active` - Current User. `disabled` - Login disable.</td></tr>
    <tr><td><code>created_at</code></td><td>read-only</td><td>Date (ISO8601 date format) this resource was created.</td></tr>
    <tr><td><code>updated_at</code></td><td>read-only</td><td>Date (ISO8601 date format) this resource was last updated.</td></tr>
  </tbody>
</table>

## Get the authenticated user

`GET /api/user`

This request returns details on the current authenticated user.

```shell
$ curl https://api.gresb.com/api/user -H "Authorization: Bearer $TOKEN"
{
  "id": 2026,
  "username": "apiexample",
  "email": "api@example.com",
  "full_name": "API Example",
  "job_title": "API Tester",
  "organization": "api test",
  "telephone": "1 (800) 555-1212",
  "address": "1234 fake street",
  "country": "us",
  "created_at": "2014-11-06T20:26:39Z",
  "updated_at": "2015-01-12T04:30:31Z",
  "status": "active",
  "name": "API Example"
}
```