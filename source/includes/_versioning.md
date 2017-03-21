
# API Version History
All updates to our API will be documented in this section. If a backwards-incompatible update is released, all API users will be notified in advanced and be given ample time to upgrade.


<table>
  <thead>
    <tr>
      <th>Version</th>
      <th>Changes</th>
      <th>Date Released</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>0.1</td>
      <td>Initial Version</td>
      <td>Feb 13, 2015</td>
    </tr>
    <tr>
      <td>0.2</td>
      <td>
        <ul>
          <li>Add documentation sections on "Get Response" and  "Update Response"</li>
          <li>Add sample output to "Survey Response" examples</li>
          <li>Add documentation of `survey` property of response objects.</li>
          <li>Remove incorrect sentence saying responses can be updated by name or manager.</li>
          <li>Change: The response fields: `legal_status`, `property_type`, `country`, `survey_date` are now read-only instead of optional</li>
        </td>
      <td>April 17, 2015</td>
    </tr>
    <tr>
      <td>0.3</td>
      <td>
        <ul>
          <li>"Basic Operations" now explains more about our uses of HTTP/REST/JSON.</li>
          <li>Cleaned up some styling</li>
          <li>Remove commitment to auto-version the API by application.</li>
          <li>Add production URL and remove under-development warning.</li>
          <li>Document optional 'major_renovation' asset field.</li>
        </td>
      <td>May 15, 2015</td>
    </tr>
    <tr>
      <td>0.4</td>
      <td>
        <ul>
          <li>Document 'ghg_offset' and 'ghg_net' fields.</li>
          <li>Document 'was_wd_perc', 'was_dwe_perc', 'was_dr_perc', 'was_do_perc' and 'was_oth_perc' fields.</li>
          <li>Remove documentation for field 'was_r_pec' which has been replaced by 'was_wd_perc' and 'was_dr_perc'.</li>
          <li>Adjust code examples for new 'waste diverted' fields.</li>
          <li>Document 'cov_lt_tot', 'cov_value_required', 'field_invalid', and 'waste_alloc' errors.</li>
          <li>Updated design of API Authorization screens</li>
        </td>
      <td>Feb 17, 2016</td>
    </tr>
    <tr>
      <td>0.5</td>
      <td>
        <ul>
          <li>Correct "scopes" parameter name in examples which should have been "scope".</li>
          <li>Remove references to OAUTH flows that aren't fully supported.</li>
        </td>
      <td>Feb 24, 2016</td>
    </tr>
    <tr>
      <td>0.6</td>
      <td>
        <ul>
          <li>Correct curl example in Step 2 - Exchange Authorization Code For Access Token.</li>
        </td>
      <td>Mar 2, 2016</td>
    </tr>
    <tr>
      <td>0.7</td>
      <td>
        <ul>
          <li>Document 'asset_country' field</li>
          <li>Document 'waste_diverted_lte_100' errors</li>
          <li>Remove 'waste_alloc', 'not_negative' errors</li>
          <li>Correct documentation for 'waste_lte_100', 'present' errors</li>
        </td>
      <td>Apr 26, 2016</td>
    </tr>
    <tr>
      <td>0.8</td>
      <td>
        <ul>
          <li>Document new /api/user resource</li>
        </td>
      <td>May 4, 2016</td>
    </tr>
    <tr>
      <td>0.9</td>
      <td>
        <ul>
          <li>Updated data dictionary for 2017 assessment</li>
        </td>
      <td>Jan 26, 2017</td>
    </tr>
    <tr>
      <td>0.10</td>
      <td>
        <ul>
          <li>
            Update mentions of survey_date to use 2017 as an example. Rename two field names
            from asset dictionary published on Jan 26:
               `asset_year` should have been `asset_const_year`,
               `asset_IDM` should have been `asset_ind`
          </li>
        </td>
      <td>Mar 6, 2017</td>
    </tr>
    <tr>
      <td>0.11</td>
      <td>
        <ul>
          <li>
            `asset_size_tenant` is now split into two fields `asset_size_tenant_tenant` and 'asset_size_tenant_landlord'
          </li>
        </td>
      <td>May 21, 2017</td>
    </tr>
  </tbody>
</table>

