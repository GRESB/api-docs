
# Versioning
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
  </tbody>
</table>

