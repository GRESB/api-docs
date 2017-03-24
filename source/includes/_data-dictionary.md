## Data Dictionary (2017)

Data may be posted for the two years preceding the Assessment.  For example, the 2017 Assessment asks for data from 2015 and 2016. The data types and validation rules for each field/metric are shown below.

<table rules='all' id='asset_level_data_dictionary'>
  <thead>
    <tr>
      <th>Data Variable</th>
      <th>Data Type - Validation</th>
      <th>Description</th>
      <th>Units</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>partners_id</td>
      <td>Text - Required</td>
      <td>Your unique ID for the asset</td>
      <td><br>
      </td>
    </tr>
    <tr>
      <td>asset_name</td>
      <td>Text - Required</td>
      <td>A name of the asset suitable for display in a list of portfolio assets.</td>
      <td><br>
      </td>
    </tr>
    <tr>
      <td>property_type</td>
      <td>Code</td>
      <td>A GRESB Asset Property Type code --- see <a href="https://api-sandbox.gresb.com/about/lists">https://api-sandbox.gresb.com/about/lists</a> for valid values</td>
      <td><br>
      </td>
    </tr>
    <tr>
      <td>asset_address</td>
      <td>Text</td>
      <td>The asset's physical address, including building number, town, and
        state/providence</td>
      <td><br>
      </td>
    </tr>
    <tr>
      <td>asset_country</td>
      <td>Code</td>
      <td>A ISO3166 Country Code -- see <a href="https://api-sandbox.gresb.com/about/lists">https://api-sandbox.gresb.com/about/lists</a> for valid values</td>
      <td><br>
      </td>
    </tr>
    <tr>
      <td>asset_const_year</td>
      <td>x &gt; 0</td>
      <td>The year of construction of an asset (optional).</td>
      <td><br>
      </td>
    </tr>
    <tr>
      <td>asset_vacancy</td>
      <td>0 ≤ x ≤ 100</td>
      <td>The average annual vacancy of an asset.</td>
      <td><br>
      </td>
    </tr>
    <tr>
      <td>asset_gav</td>
      <td>x &gt; 0</td>
      <td>The gross annual value of an asset (optional).</td>
      <td><br>
      </td>
    </tr>
    <tr>
      <td>asset_ind</td>
      <td>x &gt; 0</td>
      <td>Did the company/fund manager have operational control over the asset. See the GRESB Assessment Reference Guide for further information.</td>
      <td><br>
      </td>
    </tr>
    <tr>
      <td>asset_size_common</td>
      <td>x &gt; 0</td>
      <td>The floor area of the common areas of an asset in square feet or meters. See the GRESB Assessment Reference Guide for further information.</td>
      <td><br>
      </td>
    </tr>
    <tr>
      <td>asset_size_shared</td>
      <td>x &gt; 0</td>
      <td>The floor area of the shared service areas of an asset in square feet or meters. See the GRESB Assessment Reference Guide for further information.</td>
      <td><br>
      </td>
    </tr>
    <tr>
      <td>asset_size_tenant_tenant</td>
      <td>x &gt; 0</td>
      <td>The floor area of the tenant areas of an asset in square feet or meters. See the GRESB Assessment Reference Guide for further information.</td>
      <td><br>
      </td>
    </tr>
    <tr>
      <td>asset_size_tenant_landlord</td>
      <td>x &gt; 0</td>
      <td>The floor area of the landlord areas of an asset in square feet or meters. See the GRESB Assessment Reference Guide for further information.</td>
      <td><br>
      </td>
    </tr>
    <tr>
      <td>asset_size_whole</td>
      <td>x &gt; 0</td>
      <td>The floor area of the whole building areas of an asset in square feet or meters. See the GRESB Assessment Reference Guide for further information.</td>
      <td><br>
      </td>
    </tr>
    <tr>
      <td>asset_size</td>
      <td>x &gt; 0</td>
      <td>Size of asset</td>
      <td><br>
      </td>
    </tr>
    <tr>
      <td>asset_own</td>
      <td>0 ≤ x ≤ 12. Integer</td>
      <td>The number of months your fund/company has owned this asset.</td>
      <td><br>
      </td>
    </tr>
    <tr>
      <td>major_renovation</td>
      <td>[ 'Y', 'N', null ]</td>
      <td>Has the building been involved in a major renovation.</td>
      <td></td>
    </tr>
    <tr>
      <td>dc_change</td>
      <td>[ 'Y', 'N', null ]</td>
      <td>Did the data coverage for this asset change?.</td>
      <td></td>
    </tr>
    <tr>
      <td>en_man_bcf_abs</td>
      <td>x &gt; 0</td>
      <td>Fuel consumption from all common areas of the base building over
        the current year. Measured in kWh. Applies only to managed assets.</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>en_man_bcf_cov</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the common areas specified in the field
        above (en_man_bcf_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>en_man_bcf_tot</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the common areas specified in the field
        above (en_man_bcf_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>en_man_bcd_abs</td>
      <td>x &gt; 0</td>
      <td>District heating and cooling consumption from all common areas of
        the base building over the current year. Measured in kWh. Applies only to
        managed assets.</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>en_man_bcd_cov</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the common areas specified in the field
        above (en_man_bcd_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>en_man_bcd_tot</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the common areas specified in the field
        above (en_man_bcd_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>en_man_bce_abs</td>
      <td>x &gt; 0</td>
      <td>Electricity consumption from all common areas of the base building
        over the current year. Measured in kWh. Applies only to managed assets.</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>en_man_bce_cov</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the common areas specified in the field
        above (en_man_bce_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>en_man_bce_tot</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the common areas specified in the field
        above (en_man_bce_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>en_man_bsf_abs</td>
      <td>x &gt; 0</td>
      <td>Fuel consumption from all shared services or central plants of the
        base building over the current year. Measured in kWh. Applies only to managed
        assets.</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>en_man_bsf_cov</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the shared services or central plant
        specified in the field above (en_man_bsf_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>en_man_bsf_tot</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of shared services or the central plant
        specified in the field above (en_man_bsf_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>en_man_bsd_abs</td>
      <td>x &gt; 0</td>
      <td>District heating and cooling consumption from all shared services
        or central plants of the base building over the current year. Measured in kWh.
        Applies only to managed assets.</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>en_man_bsd_cov</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the shared services or the central plant
        specified in the field above (en_man_bsd_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>en_man_bsd_tot</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the shared services or the central plant
        specified in the field above (en_man_bsd_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>en_man_bse_abs</td>
      <td>x &gt; 0</td>
      <td>Electricity consumption from all shared services or central plants
        of the base building over the current year. Measured in kWh. Applies only to
        managed assets.</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>en_man_bse_cov</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the shared services or the central plant
        specified in the field above (en_man_bse_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>en_man_bse_tot</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the shared services or the central plant
        specified in the field above (en_man_bse_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>en_man_bof_abs</td>
      <td>x &gt; 0</td>
      <td>Fuel consumption from outdoor, exterior and parking areas of the
        asset over the current year. Measured in kWh. Applies only to managed assets.</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>en_man_boe_abs</td>
      <td>x &gt; 0</td>
      <td>
        Electricity consumption from outdoor, exterior, and parking areas of the
        asset over the current year. Measured in kWh. Applies only to managed assets.</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>en_man_tlf_abs</td>
      <td>x &gt; 0</td>
      <td>Fuel consumption of tenant space purchased by landlords over the current year.
        Measured in kWh. Applies only to managed assets.</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>en_man_tlf_cov</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the tenant space purchased by landlords
        specified in the field above (en_man_tlf_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>en_man_tlf_tot</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the tenant space purchased by a landlord
        specified in the field above (en_man_tlf_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>en_man_tld_abs</td>
      <td>x &gt; 0</td>
      <td>District heating and cooling consumption of tenant space purchased
        by a landlord over the current year. Measured in kWh. Applies only to managed
        assets.</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>en_man_tld_cov</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the tenant space purchased by a landlord
        specified in the field above (en_man_tld_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>en_man_tld_tot</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the tenant space purchased by a landlord
        specified in the field above (en_man_tld_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>en_man_tle_abs</td>
      <td>x &gt; 0</td>
      <td>Electricity consumption of tenant space purchased by a landlord
        over the current year. Measured in kWh. Applies only to managed assets.</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>en_man_tle_cov</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the tenant space purchased by a landlord
        specified in the field above (en_man_tle_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>en_man_tle_tot</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the tenant space purchased by a landlord
        specified in the field above (en_man_tle_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>en_man_ttf_abs</td>
      <td>x &gt; 0</td>
      <td>Fuel consumption of tenant space purchased by tenants over the current year.
        Measured in kWh. Applies only to managed assets.</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>en_man_ttf_cov</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the tenant space purchased by tenants
        specified in the field above (en_man_ttf_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>en_man_ttf_tot</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the tenant space purchased by tenants
        specified in the field above (en_man_ttf_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>en_man_ttd_abs</td>
      <td>x &gt; 0</td>
      <td>District heating and cooling consumption of tenant space purchased
        by tenants over the current year. Measured in kWh. Applies only to managed
        assets.</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>en_man_ttd_cov</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the tenant space purchased by tenants
        specified in the field above (en_man_ttd_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>en_man_ttd_tot</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the tenant space purchased by tenants
        specified in the field above (en_man_ttd_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>en_man_tte_abs</td>
      <td>x &gt; 0</td>
      <td>Electricity consumption of tenant space purchased by tenants over
        the current year. Measured in kWh. Applies only to managed assets.</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>en_man_tte_cov</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the tenant space purchased by tenants
        specified in the field above (en_man_tte_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>en_man_tte_tot</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the tenant space purchased by tenants
        specified in the field above (en_man_tte_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>en_man_wcf_abs</td>
      <td>x &gt; 0</td>
      <td>Fuel consumption within the rational building (tenant space and
        common areas combined) over the current year. Measured in kWh. Applies only to
        managed assets</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>en_man_wcf_cov</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the rational building specified in the field
        above (en_man_wcf_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>en_man_wcf_tot</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the rational building specified in the
        field above (en_man_wcf_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>en_man_wcd_abs</td>
      <td>x &gt; 0</td>
      <td>District heating and cooling consumption within the rational
        building (tenant space and common areas combined) over the current year.
        Measured in kWh. Applies only to managed assets</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>en_man_wcd_cov</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the rational building specified in the field
        above (en_man_wcd_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>en_man_wcd_tot</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the rational building specified in the
        field above (en_man_wcd_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>en_man_wce_abs</td>
      <td>x &gt; 0</td>
      <td>Electricity consumption within the rational building (tenant space
        and common areas combined) over the current year. Measured in kWh. Applies only
        to managed assets</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>en_man_wce_cov</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the rational building specified in the field
        above (en_man_wce_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>en_man_wce_tot</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the rational building specified in the
        field above (en_man_wce_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>en_ind_wwf_abs</td>
      <td>x &gt; 0</td>
      <td>Fuel consumption within the rational building (tenant space and
        common areas combined) over the current year. Measured in kWh. Applies only to
        indirectly managed assets</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>en_ind_wwf_cov</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the rational building specified in the field
        above (en_ind_wwf_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>en_ind_wwf_tot</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the rational building specified in the
        field above (en_ind_wwf_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>en_ind_wwd_abs</td>
      <td>x &gt; 0</td>
      <td>District heating and cooling consumption within the rational
        building (tenant space and common areas combined) over the current year.
        Measured in kWh. Applies only to indirectly managed assets</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>en_ind_wwd_cov</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the rational building specified in the field
        above (en_ind_wwd_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>en_ind_wwd_tot</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the rational building specified in the
        field above (en_ind_wwd_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>en_ind_wwe_abs</td>
      <td>x &gt; 0</td>
      <td>Electricity consumption within the rational building (tenant space
        and common areas combined) over the current year. Measured in kWh. Applies only
        to indirectly managed assets</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>en_ind_wwe_cov</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the rational building specified in the field
        above (en_ind_wwe_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>en_ind_wwe_tot</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the rational building specified in the
        field above (en_ind_wwe_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>en_ind_wof_abs</td>
      <td>x &gt; 0</td>
      <td>Fuel consumption of outdoor, exterior, and parking areas over
        the current year. Measured in kWh. Applies only to indirectly managed assets</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>en_ind_woe_abs</td>
      <td>x &gt; 0</td>
      <td>Electricity consumption of outdoor, exterior, and parking areas
        over the current year. Measured in kWh. Applies only to indirectly managed
        assets</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>ghg_s1_abs</td>
      <td>x &gt; 0</td>
      <td>Scope 1 greenhouse gas emissions over the current year. Scope 1 is defined as
        all direct GHG emissions of the asset. Measured in metric tonnes.
        Applies to all assets </td>
      <td>tonnes</td>
    </tr>
    <tr>
      <td>ghg_s1_cov</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the asset specified in the field above
        (ghg_s1_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>ghg_s1_tot</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the asset specified in the field above
        (ghg_s1_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>ghg_s2_abs</td>
      <td>x &gt; 0</td>
      <td>Scope 2 greenhouse gas emissions of the asset over the current year. Scope 2
        is defined as indirect GHG emissions as a result of purchased
        electricity, heat, and steam. Measured in metric tonnes. Applies to
        all assets </td>
      <td>tonnes</td>
    </tr>
    <tr>
      <td>ghg_s2_cov</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the asset specified in the field above
        (ghg_s2_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>ghg_s2_tot</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the asset specified in the field above
        (ghg_s2_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>ghg_s3_abs</td>
      <td>x &gt; 0</td>
      <td>Scope 3 greenhouse gas emissions over the current year. Scope 3 is defined as
        all indirect GHG emissions that do not result from the purchase of
        electricity, heat, or steam. Scope 3 does not apply to all assets.
        Measured in metric tonnes</td>
      <td>tonnes</td>
    </tr>
    <tr>
      <td>ghg_s3_cov</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the asset specified in the field above
        (ghg_s3_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>ghg_s3_tot</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the asset specified in the field above
        (ghg_s3_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>ghg_offset_abs</td>
      <td>x &gt; 0</td>
      <td>The greenhouse gas offset purchased for the asset over the current year. Greenhouse gas offset is defined as the purchased reduction in greenhouse gases in order to offset the emissions made at the asset. Measured in metric tonnes. Applies to all assets</td>
      <td>tonnes</td>
    </tr>
    <tr>
      <td>ghg_net_abs</td>
      <td>x &gt; 0</td>
      <td>The net greenhouse gas emissions for the asset after purchasing the greenhouse gas offsets.</td>
      <td>tonnes</td>
    </tr>
    <tr>
      <td>wat_man_bc_abs</td>
      <td>x &gt; 0</td>
      <td>Water consumption of all common areas within the base building
        over the current year. Measured in cubic meters. Applies only to managed assets</td>
      <td>m³</td>
    </tr>
    <tr>
      <td>wat_man_bc_cov</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the common areas specified in the field
        above (wat_man_bc_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>wat_man_bc_tot</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the common areas specified in the field
        above (wat_man_bc_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>wat_man_bs_abs</td>
      <td>x &gt; 0</td>
      <td>Water consumption of all shared services/ central plant areas within the base building over the current year. Measured in cubic meters. Applies only to managed assets</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>wat_man_bs_cov</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the shared services/ central plant areas specified in the field above (wat_man_bs_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>wat_man_bs_tot</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the shared services/ central plant areas specified in the field above (wat_man_bs_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>wat_man_bo_abs</td>
      <td>x &gt; 0</td>
      <td>Water consumption of all exterior or outdoor areas of the asset
        over the current year. Measured in cubic meters. Applies only to managed assets</td>
      <td>m³</td>
    </tr>
    <tr>
      <td>wat_man_tl_abs</td>
      <td>x &gt; 0</td>
      <td>Water consumption of tenant space purchase by landlords over the current year.
        Measure in cubic meters. Applies only to managed assets</td>
      <td>m³</td>
    </tr>
    <tr>
      <td>wat_man_tl_cov</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the tenant space purchased by landlords
        specified in the field above (wat_man_tl_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>wat_man_tl_tot</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the tenant space purchased by landlords
        specified in the field above (wat_man_tl_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>wat_man_tt_abs</td>
      <td>x &gt; 0</td>
      <td>Water consumption of tenant space purchase by tenants over the current year.
        Measure in cubic meters. Applies only to managed assets</td>
      <td>m³</td>
    </tr>
    <tr>
      <td>wat_man_tt_cov</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the tenant space purchased by tenants
        specified in the field above (wat_man_tt_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>wat_man_tt_tot</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the tenant space purchased by tenants
        specified in the field above (wat_man_tt_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>wat_man_wc_abs</td>
      <td>x &gt; 0</td>
      <td>Water consumption of the rational building (tenant space and
        common areas combined) over the current year. Measured in cubic meters. Applies
        only to managed assets </td>
      <td>m³</td>
    </tr>
    <tr>
      <td>wat_man_wc_cov</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the rational building (tenant space and
        common areas combined) specified in the field above
        (wat_man_wc_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>wat_man_wc_tot</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the rational building (tenant space and
        common areas combined) specified in the field above
        (wat_man_wc_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>wat_ind_ww_abs</td>
      <td>x &gt; 0</td>
      <td>Water consumption of the rational building (tenant space and
        common areas combined) over the current year. Measured in cubic meters. Applies
        only to indirectly managed assets</td>
      <td>m³</td>
    </tr>
    <tr>
      <td>wat_ind_ww_cov</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the rational building (tenant space and
        common areas combined) specified in the field above
        (wat_ind_ww_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>wat_ind_ww_tot</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the rational building (tenant space and
        common areas combined) specified in the field above
        (wat_ind_ww_abs)</td>
      <td>m²</td>
    </tr>
    <tr>
      <td>wat_ind_wo_abs</td>
      <td>x &gt; 0</td>
      <td>Water consumption of outdoor or exterior areas of the asset over
        the current year. Measured in cubic meters. Applies only to indirectly managed
        assets</td>
      <td>m³</td>
    </tr>
    <tr>
      <td>was_man_haz_abs</td>
      <td>x ≥ 0</td>
      <td>The total weight of hazardous waste produced by the asset over
        the current year. Measured in metric tonnes. Applies only to managed assets</td>
      <td>tonnes</td>
    </tr>
    <tr>
      <td>was_man_nhaz_abs</td>
      <td>x ≥ 0</td>
      <td>The total weight of non-hazardous waste produced by the asset over
        the current year. Measured in metric tonnes. Applies only to managed assets</td>
      <td>tonnes</td>
    </tr>
    <tr>
      <td>was_man_perc</td>
      <td>0 &lt; x ≤ 100</td>
      <td>Percent of the asset covered by the data above
        (was_man_haz_abs), (was_man_nhaz_abs) . Based on
        floor area covered / total floor area. </td>
      <td>%</td>
    </tr>
    <tr>
      <td>was_ind_haz_abs</td>
      <td>x ≥ 0</td>
      <td>The total weight of hazardous waste produced by the asset over
        the current year. Measured in metric tonnes. Applies only to indirectly managed
        assets</td>
      <td>tonnes</td>
    </tr>
    <tr>
      <td>was_ind_nhaz_abs</td>
      <td>x ≥ 0</td>
      <td>The total weight of non-hazardous waste produced by the asset over
        the current year. Measured in metric tonnes. Applies only to indirectly managed
        assets</td>
      <td>tonnes</td>
    </tr>
    <tr>
      <td>was_ind_perc</td>
      <td>0 &lt; x ≤ 100</td>
      <td>Percent of the asset covered by the data above
        (was_man_haz_abs), (was_man_nhaz_abs) . Based on
        floor area covered / total floor area. </td>
      <td>%</td>
    </tr>
    <tr>
      <td>was_i_perc</td>
      <td>0 ≤ x ≤ 100</td>
      <td>Percent of waste disposed via incineration over the current year. Applies to
        all assets</td>
      <td>%</td>
    </tr>
    <tr>
      <td>was_l_perc</td>
      <td>0 ≤ x ≤ 100</td>
      <td>Percent of waste disposed via landfills over the current year. Applies to all
        assets</td>
      <td>%</td>
    </tr>
    <tr>
      <td>was_wd_perc</td>
      <td>0 ≤ x ≤ 100</td>
      <td>Percent of waste diverted from landfills over the current year. Applies to all assets</td>
      <td>%</td>
    </tr>
    <tr>
      <td>was_dwe_perc</td>
      <td>0 ≤ x ≤ 100</td>
      <td>Percent of waste diverted through converting waste to energy over the current year. Applies to all assets</td>
      <td>%</td>
    </tr>
    <tr>
      <td>was_dr_perc</td>
      <td>0 ≤ x ≤ 100</td>
      <td>Percent of waste diverted through recycling over the current year. Applies to all assets</td>
      <td>%</td>
    </tr>
    <tr>
      <td>was_do_perc</td>
      <td>0 ≤ x ≤ 100</td>
      <td>Percent of waste diverted through other methods over the current year. Applies to all assets</td>
      <td>%</td>
    </tr>
    <tr>
      <td>was_oth_perc</td>
      <td>0 ≤ x ≤ 100</td>
      <td>Percent of waste disposed via other methods over the current year. Applies to all assets</td>
      <td>%</td>
    </tr>
    <tr>
      <td>tba_en_in</td>
      <td>[ 'Y', 'N', null ]</td>
      <td>Did the entity perform an in-house technical building assessment during the last four years to identify energy efficiency opportunities within the asset.</td>
      <td>%</td>
    </tr>
    <tr>
      <td>tba_en_ex</td>
      <td>[ 'Y', 'N', null ]</td>
      <td>Did the entity perform an external technical building assessment during the last four years to identify energy efficiency opportunities within the asset.</td>
      <td>%</td>
    </tr>
    <tr>
      <td>tba_wat_in</td>
      <td>[ 'Y', 'N', null ]</td>
      <td>Did the entity perform an in-house technical building assessment during the last four years to identify water efficiency opportunities within the asset.</td>
      <td>%</td>
    </tr>
    <tr>
      <td>tba_wat_ex</td>
      <td>[ 'Y', 'N', null ]</td>
      <td>Did the entity perform an external technical building assessment during the last four years to identify water efficiency opportunities within the asset.</td>
      <td>%</td>
    </tr>
    <tr>
      <td>tba_was_in</td>
      <td>[ 'Y', 'N', null ]</td>
      <td>Did the entity perform an in-house technical building assessment during the last four years to identify waste efficiency opportunities within the asset.</td>
      <td>%</td>
    </tr>
    <tr>
      <td>tba_was_ex</td>
      <td>[ 'Y', 'N', null ]</td>
      <td>Did the entity perform an external technical building assessment during the last four years to identify waste efficiency opportunities within the asset.</td>
      <td>%</td>
    </tr>
    <tr>
      <td>tba_hw_in</td>
      <td>[ 'Y', 'N', null ]</td>
      <td>Did the entity perform an in-house technical building assessment during the last four years to identify health and well-being efficiency opportunities within the asset.</td>
      <td>%</td>
    </tr>
    <tr>
      <td>tba_hw_ex</td>
      <td>[ 'Y', 'N', null ]</td>
      <td>Did the entity perform an external technical building assessment during the last four years to identify health and well-being efficiency opportunities within the asset.</td>
      <td>%</td>
    </tr>
    <tr>
      <td>dms_en</td>
      <td>[ 'Y', 'N', null ]</td>
      <td>Is the asset part of the data management system that collects energy data?</td>
      <td>%</td>
    </tr>
    <tr>
      <td>dms_ghg</td>
      <td>[ 'Y', 'N', null ]</td>
      <td>Is the asset part of the data management system that collects GHG emission data?</td>
      <td>%</td>
    </tr>
    <tr>
      <td>dms_hw</td>
      <td>[ 'Y', 'N', null ]</td>
      <td>Is the asset part of the data management system that collects health and well-being data?</td>
      <td>%</td>
    </tr>
    <tr>
      <td>dms_ieq</td>
      <td>[ 'Y', 'N', null ]</td>
      <td>Is the asset part of the data management system that collects indoor environmental quality data?</td>
      <td>%</td>
    </tr>
    <tr>
      <td>dms_rsl</td>
      <td>[ 'Y', 'N', null ]</td>
      <td>Is the asset part of the data management system that collects resilience data?</td>
      <td>%</td>
    </tr>
    <tr>
      <td>dms_was</td>
      <td>[ 'Y', 'N', null ]</td>
      <td>Is the asset part of the data management system that collects waste data?</td>
      <td>%</td>
    </tr>
    <tr>
      <td>dms_wat</td>
      <td>[ 'Y', 'N', null ]</td>
      <td>Is the asset part of the data management system that collects water data?</td>
      <td>%</td>
    </tr>
    <tr>
      <td>dms_oth</td>
      <td>[ 'Y', 'N', null ]</td>
      <td>Is the asset part of the data management system that collects other data?</td>
      <td>%</td>
    </tr>
    <tr>
      <td>mon_en_auto</td>
      <td>[ 'Y', 'N', null ]</td>
      <td>Does the entity monitor the energy consumption with automatic meter readings?</td>
      <td>%</td>
    </tr>
    <tr>
      <td>mon_en_inv</td>
      <td>[ 'Y', 'N', null ]</td>
      <td>Does the entity monitor the energy consumption based on invoices?</td>
      <td>%</td>
    </tr>
    <tr>
      <td>mon_en_mnl</td>
      <td>[ 'Y', 'N', null ]</td>
      <td>Does the entity monitor the energy consumption with manual-visual readings?</td>
      <td>%</td>
    </tr>
    <tr>
      <td>mon_en_tnt</td>
      <td>[ 'Y', 'N', null ]</td>
      <td>Does the entity monitor the energy consumption provided by tenants?</td>
      <td>%</td>
    </tr>
    <tr>
      <td>mon_en_oth</td>
      <td>[ 'Y', 'N', null ]</td>
      <td>Does the entity monitor the energy consumption with other methods?</td>
      <td>%</td>
    </tr>
      <td>mon_wat_auto</td>
      <td>[ 'Y', 'N', null ]</td>
      <td>Does the entity monitor the water consumption with automatic meter readings?</td>
      <td>%</td>
    </tr>
    <tr>
      <td>mon_wat_inv</td>
      <td>[ 'Y', 'N', null ]</td>
      <td>Does the entity monitor the water consumption based on invoices?</td>
      <td>%</td>
    </tr>
    <tr>
      <td>mon_wat_mnl</td>
      <td>[ 'Y', 'N', null ]</td>
      <td>Does the entity monitor the water consumption with manual-visual readings?</td>
      <td>%</td>
    </tr>
    <tr>
      <td>mon_wat_tnt</td>
      <td>[ 'Y', 'N', null ]</td>
      <td>Does the entity monitor the water consumption provided by tenants?</td>
      <td>%</td>
    </tr>
    <tr>
      <td>mon_wat_oth</td>
      <td>[ 'Y', 'N', null ]</td>
      <td>Does the entity monitor the water consumption with other methods?</td>
      <td>%</td>
    </tr>
    <tr>
      <td>mon_was_in</td>
      <td>[ 'Y', 'N', null ]</td>
      <td>Does the entity monitor the waste stream data with internal tracking?</td>
      <td>%</td>
    </tr>
    <tr>
      <td>mon_was_whl</td>
      <td>[ 'Y', 'N', null ]</td>
      <td>Does the entity monitor the waste stream data provided by haulers?</td>
      <td>%</td>
    </tr>
    <tr>
      <td>mon_was_tnt</td>
      <td>[ 'Y', 'N', null ]</td>
      <td>Does the entity monitor the waste stream data provided by tenants?</td>
      <td>%</td>
    </tr>
    <tr>
      <td>mon_was_oth</td>
      <td>[ 'Y', 'N', null ]</td>
      <td>Does the entity monitor the waste stream data with other methods?</td>
      <td>%</td>
    </tr>
  </tbody>
</table>`
