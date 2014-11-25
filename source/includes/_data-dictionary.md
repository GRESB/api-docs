# Asset Level Data Dictionary

Property Code | Property Type
--------------|--------------
RHS           | Retail, High Street
RSM           | Retail, Shopping Center
RWB           | Retail, Warehouse
OFF           | Office
DWH           | Industrial, District Warehouse
OIN           | Industrial, Manufacturing
RES           | Residential
HOT           | Hotel
HEC           | Health Care
OTH           | Other
OT2           | Other #2 

<table rules='all'>
  <thead>
    <tr>
      <th>Data Variable</th>
      <th>Data Type/Range</th>
      <th>Description</th>
      <th>Unit</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>YOUR_ID</td>
      <td>Text - Required</td>
      <td>Your unique ID for the asset</td>
      <td><br>
      </td>
    </tr>
    <tr>
      <td>NAME - Required</td>
      <td>Text</td>
      <td>A name of the asset suitable for display in a list of portfolio assets.</td>
      <td><br>
      </td>
    </tr>
    <tr>
      <td>ADDRESS - Required</td>
      <td>Text</td>
      <td>The asset's physical address, including building number, town, and
        state/providence</td>
      <td><br>
      </td>
    </tr>
    <tr>
      <td>FLOOR_AREA - Required</td>
      <td>x &gt; 0</td>
      <td>The total floor area of an asset in square meters. See the GRESB Survey Guidance for further information.</td>
      <td><br>
      </td>
    </tr>
    <tr>
      <td>MONTHS_OWNED</td>
      <td>0 ≤ x ≤ 12. Integer</td>
      <td>The number of months your fund/company has owned this asset in
        the current year</td>
      <td><br>
      </td>
    </tr>
    <tr>
      <td>MONTHS_OWNED_PY</td>
      <td>0 ≤ x ≤ 12. Integer</td>
      <td>The number of months your fund/company has owned this asset in
        the previous year</td>
      <td><br>
      </td>
    </tr>
    <tr>
      <td>EN_MAN_BCF_ABS_PY</td>
      <td>x &gt; 0</td>
      <td>Fuel consumption from all common areas within the base building
        over the previous year. Measured in kilowatt hours (kWh). Applies only to managed
        assets.</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_MAN_BCD_ABS_PY</td>
      <td>x &gt; 0</td>
      <td>District heating and cooling consumption from all common areas
        within the base building over the previous year. Measured in kWh. Applies only to
        managed assets.</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_MAN_BCE_ABS_PY</td>
      <td>x &gt; 0</td>
      <td>Electricity consumption from all common areas within the base
        building measured in kWh over the previous year. Applies only to managed assets </td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_MAN_BSF_ABS_PY</td>
      <td>x &gt; 0</td>
      <td>Fuel consumption of shared services or a central plant within the
        base building over the previous year. Measured in kWh. Applies only to managed
        assets.</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_MAN_BSD_ABS_PY</td>
      <td>x &gt; 0</td>
      <td>District heating and cooling consumption of shared services or a
        central plant within the base building over the previous year. Measured in kWh.
        Applies only to managed assets.</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_MAN_BSE_ABS_PY</td>
      <td>x &gt; 0</td>
      <td>Electricity consumption of shared services or a central plant
        within the base building over the previous year. Measured in kWh. Applies only to
        managed assets.</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_MAN_BOF_ABS_PY</td>
      <td>x &gt; 0</td>
      <td>Fuel consumption of outdoor, exterior, and parking areas over
        the previous year. Measured in kWh. Applies only to directly managed assets</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_MAN_BOE_ABS_PY</td>
      <td>x &gt; 0</td>
      <td>Fuel consumption of outdoor, exterior, and parking areas over
        the previous year. Measured in kWh. Applies only to directly managed assets</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_MAN_TLF_ABS_PY</td>
      <td>x &gt; 0</td>
      <td>Fuel consumption of tenant space purchased by a landlord over
        the previous year. Measured in kWh. Applies only to managed assets.</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_MAN_TLD_ABS_PY</td>
      <td>x &gt; 0</td>
      <td>District heating and cooling consumption of tenant space purchased
        by a landlord over the previous year. Measured in kWh. Applies only to managed
        assets.</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_MAN_TLE_ABS_PY</td>
      <td>x &gt; 0</td>
      <td>Electricity consumption of tenant space within the asset purchased
        by landlords over the previous year. Measured in kWh. Applies only to managed
        assets.</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_MAN_TTF_ABS_PY</td>
      <td>x &gt; 0</td>
      <td>Fuel consumption of all tenant space within the asset purchased by
        tenants in the previous year. Measured in kWh. Applies only to directly managed
        assets.</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_MAN_TTD_ABS_PY</td>
      <td>x &gt; 0</td>
      <td>District heating and cooling consumption of all tenant space
        within the asset purchased by tenants over the previous year. Measured in kWh.
        Applies only to managed assets.</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_MAN_TTE_ABS_PY</td>
      <td>x &gt; 0</td>
      <td>Electricity consumption of all tenant space within the asset
        purchased by tenants over the previous year. Measured in kWh. Applies only to
        managed assets.</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_MAN_WCF_ABS_PY</td>
      <td>x &gt; 0</td>
      <td>Fuel consumption within the rational building (tenant space and
        common areas combined) over the previous year. Measured in kWh. Applies only to
        managed assets</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_MAN_WCD_ABS_PY</td>
      <td>x &gt; 0</td>
      <td>District heating and cooling consumption within the rational
        building (tenant space and common areas combined) over the previous year.
        Measured in kWh. Applies only to managed assets</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_MAN_WCE_ABS_PY</td>
      <td>x &gt; 0</td>
      <td>Electricity consumption within the rational Building (tenant space
        and common areas combined) over the previous year. Measured in kWh. Applies only
        to managed assets</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_IND_WWF_ABS_PY</td>
      <td>x &gt; 0</td>
      <td>Fuel consumption within the rational building (tenant space and
        common areas combined) over the previous year. Measured in kWh. Applies only to
        indirectly managed assets</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_IND_WWD_ABS_PY</td>
      <td>x &gt; 0</td>
      <td>District heating and cooling consumption within the rational
        building (tenant space and common areas combined) over the previous year.
        Measured in kWh. Applies only to indirectly managed assets</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_IND_WWE_ABS_PY</td>
      <td>x &gt; 0</td>
      <td>Electricity consumption within the rational building (tenant space
        and common areas combined) over the previous year. Measured in kWh. Applies only
        to indirectly managed assets</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_IND_WOF_ABS_PY</td>
      <td>x &gt; 0</td>
      <td>Fuel consumption of outdoor, exterior, and parking areas over
        the previous year. Measured in kWh. Applies only to indirectly managed assets</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_IND_WOE_ABS_PY</td>
      <td>x &gt; 0</td>
      <td>Electricity consumption of outdoor, exterior, and parking areas
        over the previous year. Measured in kWh. Applies only to indirectly managed
        assets.</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_MAN_BCF_ABS</td> 
      <td>x &gt; 0</td>
      <td>Fuel consumption from all common areas of the base building over
        the current year. Measured in kWh. Applies only to managed assets.</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_MAN_BCF_COV</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the common areas specified in the field
        above (EN_MAN_BCF_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>EN_MAN_BCF_TOT</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the common areas specified in the field
        above (EN_MAN_BCF_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>EN_MAN_BCD_ABS</td>
      <td>x &gt; 0</td>
      <td>District heating and cooling consumption from all common areas of
        the base building over the current year. Measured in kWh. Applies only to
        managed assets.</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_MAN_BCD_COV</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the common areas specified in the field
        above (EN_MAN_BCD_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>EN_MAN_BCD_TOT</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the common areas specified in the field
        above (EN_MAN_BCD_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>EN_MAN_BCE_ABS</td>
      <td>x &gt; 0</td>
      <td>Electricity consumption from all common areas of the base building
        over the current year. Measured in kWh. Applies only to managed assets.</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_MAN_BCE_COV</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the common areas specified in the field
        above (EN_MAN_BCE_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>EN_MAN_BCE_TOT</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the common areas specified in the field
        above (EN_MAN_BCE_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>EN_MAN_BSF_ABS</td>
      <td>x &gt; 0</td>
      <td>Fuel consumption from all shared services or central plants of the
        base building over the current year. Measured in kWh. Applies only to managed
        assets.</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_MAN_BSF_COV</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the shared services or central plant
        specified in the field above (EN_MAN_BSF_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>EN_MAN_BSF_TOT</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of shared services or the central plant
        specified in the field above (EN_MAN_BSF_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>EN_MAN_BSD_ABS</td>
      <td>x &gt; 0</td>
      <td>District heating and cooling consumption from all shared services
        or central plants of the base building over the current year. Measured in kWh.
        Applies only to managed assets.</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_MAN_BSD_COV</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the shared services or the central plant
        specified in the field above (EN_MAN_BSD_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>EN_MAN_BSD_TOT</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the shared services or the central plant
        specified in the field above (EN_MAN_BSD_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>EN_MAN_BSE_ABS</td>
      <td>x &gt; 0</td>
      <td>Electricity consumption from all shared services or central plants
        of the base building over the current year. Measured in kWh. Applies only to
        managed assets.</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_MAN_BSE_COV</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the shared services or the central plant
        specified in the field above (EN_MAN_BSE_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>EN_MAN_BSE_TOT</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the shared services or the central plant
        specified in the field above (EN_MAN_BSE_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>EN_MAN_BOF_ABS</td>
      <td>x &gt; 0</td>
      <td>Fuel consumption from outdoor, exterior and parking areas of the
        asset over the current year. Measured in kWh. Applies only to managed assets.</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_MAN_BOE_ABS</td>
      <td>x &gt; 0</td>
      <td>Fuel consumption from outdoor, exterior, and parking areas of the
        asset over the current year. Measured in kWh. Applies only to managed assets.</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_MAN_TLF_ABS</td>
      <td>x &gt; 0</td>
      <td>Fuel consumption of tenant space purchased by landlords over the current year.
        Measured in kWh. Applies only to managed assets.</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_MAN_TLF_COV</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the tenant space purchased by landlords
        specified in the field above (EN_MAN_TLF_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>EN_MAN_TLF_TOT</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the tenant space purchased by a landlord
        specified in the field above (EN_MAN_TLF_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>EN_MAN_TLD_ABS</td>
      <td>x &gt; 0</td>
      <td>District heating and cooling consumption of tenant space purchased
        by a landlord over the current year. Measured in kWh. Applies only to managed
        assets.</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_MAN_TLD_COV</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the tenant space purchased by a landlord
        specified in the field above (EN_MAN_TLD_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>EN_MAN_TLD_TOT</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the tenant space purchased by a landlord
        specified in the field above (EN_MAN_TLD_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>EN_MAN_TLE_ABS</td>
      <td>x &gt; 0</td>
      <td>Electricity consumption of tenant space purchased by a landlord
        over the current year. Measured in kWh. Applies only to managed assets.</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_MAN_TLE_COV</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the tenant space purchased by a landlord
        specified in the field above (EN_MAN_TLE_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>EN_MAN_TLE_TOT</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the tenant space purchased by a landlord
        specified in the field above (EN_MAN_TLE_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>EN_MAN_TTF_ABS</td>
      <td>x &gt; 0</td>
      <td>Fuel consumption of tenant space purchased by tenants over the current year.
        Measured in kWh. Applies only to managed assets.</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_MAN_TTF_COV</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the tenant space purchased by tenants
        specified in the field above (EN_MAN_TLE_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>EN_MAN_TTF_TOT</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the tenant space purchased by tenants
        specified in the field above (EN_MAN_TLE_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>EN_MAN_TTD_ABS</td>
      <td>x &gt; 0</td>
      <td>District heating and cooling consumption of tenant space purchased
        by tenants over the current year. Measured in kWh. Applies only to managed
        assets.</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_MAN_TTD_COV</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the tenant space purchased by tenants
        specified in the field above (EN_MAN_TTD_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>EN_MAN_TTD_TOT</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the tenant space purchased by tenants
        specified in the field above (EN_MAN_TTD_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>EN_MAN_TTE_ABS</td>
      <td>x &gt; 0</td>
      <td>Electricity consumption of tenant space purchased by tenants over
        the current year. Measured in kWh. Applies only to managed assets.</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_MAN_TTE_COV</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the tenant space purchased by tenants
        specified in the field above (EN_MAN_TTE_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>EN_MAN_TTE_TOT</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the tenant space purchased by tenants
        specified in the field above (EN_MAN_TTE_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>EN_MAN_WCF_ABS</td>
      <td>x &gt; 0</td>
      <td>Fuel consumption within the rational building (tenant space and
        common areas combined) over the current year. Measured in kWh. Applies only to
        managed assets</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_MAN_WCF_COV</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the rational building specified in the field
        above (EN_MAN_WCF_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>EN_MAN_WCF_TOT</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the rational building specified in the
        field above (EN_MAN_WCF_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>EN_MAN_WCD_ABS</td>
      <td>x &gt; 0</td>
      <td>District heating and cooling consumption within the rational
        building (tenant space and common areas combined) over the current year.
        Measured in kWh. Applies only to managed assets</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_MAN_WCD_COV</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the rational building specified in the field
        above (EN_MAN_WCD_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>EN_MAN_WCD_TOT</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the rational building specified in the
        field above (EN_MAN_WCD_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>EN_MAN_WCE_ABS</td>
      <td>x &gt; 0</td>
      <td>Electricity consumption within the rational building (tenant space
        and common areas combined) over the current year. Measured in kWh. Applies only
        to managed assets</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_MAN_WCE_COV</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the rational building specified in the field
        above (EN_MAN_WCE_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>EN_MAN_WCE_TOT</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the rational building specified in the
        field above (EN_MAN_WCE_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>EN_IND_WWF_ABS</td>
      <td>x &gt; 0</td>
      <td>Fuel consumption within the rational building (tenant space and
        common areas combined) over the current year. Measured in kWh. Applies only to
        indirectly managed assets</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_IND_WWF_COV</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the rational building specified in the field
        above (EN_IND_WWF_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>EN_IND_WWF_TOT</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the rational building specified in the
        field above (EN_IND_WWF_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>EN_IND_WWD_ABS</td>
      <td>x &gt; 0</td>
      <td>District heating and cooling consumption within the rational
        building (tenant space and common areas combined) over the current year.
        Measured in kWh. Applies only to indirectly managed assets</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_IND_WWD_COV</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the rational building specified in the field
        above (EN_IND_WWD_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>EN_IND_WWD_TOT</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the rational building specified in the
        field above (EN_IND_WWD_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>EN_IND_WWE_ABS</td>
      <td>x &gt; 0</td>
      <td>Electricity consumption within the rational building (tenant space
        and common areas combined) over the current year. Measured in kWh. Applies only
        to indirectly managed assets</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_IND_WWE_COV</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the rational building specified in the field
        above (EN_IND_WWE_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>EN_IND_WWE_TOT</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the rational building specified in the
        field above (EN_IND_WWE_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>EN_IND_WOF_ABS</td>
      <td>x &gt; 0</td>
      <td>Fuel consumption of outdoor, exterior, and parking areas over
        the current year. Measured in kWh. Applies only to indirectly managed assets</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>EN_IND_WOE_ABS</td>
      <td>x &gt; 0</td>
      <td>Electricity consumption of outdoor, exterior, and parking areas
        over the current year. Measured in kWh. Applies only to indirectly managed
        assets</td>
      <td>kWh</td>
    </tr>
    <tr>
      <td>GHG_S1_ABS_PY</td>
      <td>x &gt; 0</td>
      <td>Scope 1 greenhouse gas emissions over the previous year. Scope 1 is defined as
        all direct GHG emissions of the asset. Measured in metric tonnes.
        Applies to all assets </td>
      <td>t</td>
    </tr>
    <tr>
      <td>GHG_S2_ABS_PY</td>
      <td>x &gt; 0</td>
      <td>Scope 2 greenhouse gas emissions of the asset over the previous year. Scope 2
        is defined as indirect GHG emissions as a result of purchased
        electricity, heat, and steam, or other forms of energy. Measured in
        metric tonnes. Applies to all assets </td>
      <td>t</td>
    </tr>
    <tr>
      <td>GHG_S3_ABS_PY</td>
      <td>x &gt; 0</td>
      <td>Scope 3 greenhouse gas emissions over the previous year. Scope 3 is defined as
        all indirect GHG emissions that do not result from purchased energy.
        Scope 3 does not apply to all assets. Measured in metric tonnes</td>
      <td>t</td>
    </tr>
    <tr>
      <td>GHG_S1_ABS</td>
      <td>x &gt; 0</td>
      <td>Scope 1 greenhouse gas emissions over the current year. Scope 1 is defined as
        all direct GHG emissions of the asset. Measured in metric tonnes.
        Applies to all assets </td>
      <td>t</td>
    </tr>
    <tr>
      <td>GHG_S1_COV</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the asset specified in the field above
        (GHG_S1_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>GHG_S1_TOT</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the asset specified in the field above
        (GHG_S1_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>GHG_S2_ABS</td>
      <td>x &gt; 0</td>
      <td>Scope 2 greenhouse gas emissions of the asset over the current year. Scope 2
        is defined as indirect GHG emissions as a result of purchased
        electricity, heat, and steam. Measured in metric tonnes. Applies to
        all assets </td>
      <td>t</td>
    </tr>
    <tr>
      <td>GHG_S2_COV</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the asset specified in the field above
        (GHG_S2_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>GHG_S2_TOT</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the asset specified in the field above
        (GHG_S2_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>GHG_S3_ABS</td>
      <td>x &gt; 0</td>
      <td>Scope 3 greenhouse gas emissions over the current year. Scope 3 is defined as
        all indirect GHG emissions that do not result from the purchase of
        electricity, heat, or steam. Scope 3 does not apply to all assets.
        Measured in metric tonnes</td>
      <td>t</td>
    </tr>
    <tr>
      <td>GHG_S3_COV</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the asset specified in the field above
        (GHG_S3_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>GHG_S3_TOT</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the asset specified in the field above
        (GHG_S3_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>WAT_MAN_BC_ABS_PY</td>
      <td>x &gt; 0</td>
      <td>Water consumption of all common areas within the base building
        over the previous year. Measured in cubic meters. Applies only to managed assets</td>
      <td>m3</td>
    </tr>
    <tr>
      <td>WAT_MAN_BO_ABS_PY</td>
      <td>x &gt; 0</td>
      <td>Water consumption of all exterior or outdoor areas of the asset
        over the previous year. Measured in cubic meters. Applies only to managed assets</td>
      <td>m3</td>
    </tr>
    <tr>
      <td>WAT_MAN_TL_ABS_PY</td>
      <td>x &gt; 0</td>
      <td>Water consumption of tenant space purchase by landlords over the previous year.
        Measure in cubic meters. Applies only to managed assets</td>
      <td>m3</td>
    </tr>
    <tr>
      <td>WAT_MAN_TT_ABS_PY</td>
      <td>x &gt; 0</td>
      <td>Water consumption of tenant space purchase by tenants over the previous year.
        Measure in cubic meters. Applies only to managed assets</td>
      <td>m3</td>
    </tr>
    <tr>
      <td>WAT_MAN_WC_ABS_PY</td>
      <td>x &gt; 0</td>
      <td>Water consumption of the rational building (tenant space and
        common areas combined) over the previous year. Measured in cubic meters. Applies
        only to managed assets</td>
      <td>m3</td>
    </tr>
    <tr>
      <td>WAT_IND_WW_ABS_PY</td>
      <td>x &gt; 0</td>
      <td>Water consumption of the rational building (tenant space and
        common areas combined) over the previous year. Measured in cubic meters. Applies
        only to indirectly managed assets</td>
      <td>m3</td>
    </tr>
    <tr>
      <td>WAT_IND_WO_ABS_PY</td>
      <td>x &gt; 0</td>
      <td>Water consumption of exterior or outdoor areas of the asset over
        the previous year. Measured in cubic meters. Applies only to indirectly managed
        assets</td>
      <td>m3</td>
    </tr>
    <tr>
      <td>WAT_MAN_BC_ABS</td>
      <td>x &gt; 0</td>
      <td>Water consumption of all common areas within the base building
        over the current year. Measured in cubic meters. Applies only to managed assets</td>
      <td>m3</td>
    </tr>
    <tr>
      <td>WAT_MAN_BC_COV</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the common areas specified in the field
        above (WAT_MAN_BC_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>WAT_MAN_BC_TOT</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the common areas specified in the field
        above (WAT_MAN_BC_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>WAT_MAN_BO_ABS</td>
      <td>x &gt; 0</td>
      <td>Water consumption of all exterior or outdoor areas of the asset
        over the current year. Measured in cubic meters. Applies only to managed assets</td>
      <td>m3</td>
    </tr>
    <tr>
      <td>WAT_MAN_TL_ABS</td>
      <td>x &gt; 0</td>
      <td>Water consumption of tenant space purchase by landlords over the current year.
        Measure in cubic meters. Applies only to managed assets</td>
      <td>m3</td>
    </tr>
    <tr>
      <td>WAT_MAN_TL_COV</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the tenant space purchased by landlords
        specified in the field above (WAT_MAN_TL_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>WAT_MAN_TL_TOT</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the tenant space purchased by landlords
        specified in the field above (WAT_MAN_TL_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>WAT_MAN_TT_ABS</td>
      <td>x &gt; 0</td>
      <td>Water consumption of tenant space purchase by tenants over the current year.
        Measure in cubic meters. Applies only to managed assets</td>
      <td>m3</td>
    </tr>
    <tr>
      <td>WAT_MAN_TT_COV</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the tenant space purchased by tenants
        specified in the field above (WAT_MAN_TT_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>WAT_MAN_TT_TOT</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the tenant space purchased by tenants
        specified in the field above (WAT_MAN_TT_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>WAT_MAN_WC_ABS</td>
      <td>x &gt; 0</td>
      <td>Water consumption of the rational building (tenant space and
        common areas combined) over the current year. Measured in cubic meters. Applies
        only to managed assets </td>
      <td>m3</td>
    </tr>
    <tr>
      <td>WAT_MAN_WC_COV</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the rational building (tenant space and
        common areas combined) specified in the field above
        (WAT_MAN_WC_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>WAT_MAN_WC_TOT</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the rational building (tenant space and
        common areas combined) specified in the field above
        (WAT_MAN_WC_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>WAT_IND_WW_ABS</td>
      <td>x &gt; 0</td>
      <td>Water consumption of the rational building (tenant space and
        common areas combined) over the current year. Measured in cubic meters. Applies
        only to indirectly managed assets</td>
      <td>m3</td>
    </tr>
    <tr>
      <td>WAT_IND_WW_COV</td>
      <td>x &gt; 0</td>
      <td>Data coverage area of the rational building (tenant space and
        common areas combined) specified in the field above
        (WAT_IND_WW_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>WAT_IND_WW_TOT</td>
      <td>x &gt; 0</td>
      <td>Maximum coverage area of the rational building (tenant space and
        common areas combined) specified in the field above
        (WAT_IND_WW_ABS)</td>
      <td>m2</td>
    </tr>
    <tr>
      <td>WAT_IND_WO_ABS</td>
      <td>x &gt; 0</td>
      <td>Water consumption of outdoor or exterior areas of the asset over
        the current year. Measured in cubic meters. Applies only to indirectly managed
        assets</td>
      <td>m3</td>
    </tr>
    <tr>
      <td>WAS_MAN_HAZ_ABS_PY</td>
      <td>x ≥ 0</td>
      <td>The total weight of hazardous waste produced by the asset over
        the previous year. Measured in metric tonnes. Applies only to managed assets</td>
      <td>t</td>
    </tr>
    <tr>
      <td>WAS_MAN_NHAZ_ABS_PY</td>
      <td>x ≥ 0</td>
      <td>The total weight of non-hazardous waste produced by the asset over
        the previous year. Measured in metric tonnes. Applies only to managed assets</td>
      <td>t</td>
    </tr>
    <tr>
      <td>WAS_MAN_PERC_PY</td>
      <td>0 &lt; x ≤ 100</td>
      <td>Percent of the asset covered by the data above
        (WAS_MAN_HAZ_ABSpy), (WAS_MAN_NHAZ_ABSpy) . Based on
        floor area covered / total floor area. </td>
      <td>%</td>
    </tr>
    <tr>
      <td>WAS_IND_HAZ_ABS_PY</td>
      <td>x ≥ 0</td>
      <td>The total weight of hazardous waste produced by the asset over
        the previous year. Measured in metric tonnes. Applies only to indirectly managed
        assets</td>
      <td>t</td>
    </tr>
    <tr>
      <td>WAS_IND_NHAZ_ABS_PY</td>
      <td>x ≥ 0</td>
      <td>The total weight of non-hazardous waste produced by the asset over
        the previous year. Measured in metric tonnes. Applies only to indirectly managed
        assets</td>
      <td>t</td>
    </tr>
    <tr>
      <td>WAS_IND_PERC_PY</td>
      <td>0 &lt; x ≤ 100</td>
      <td>Percent of the asset covered by the data above
        (WAS_IND_HAZ_ABSpy), (WAS_IND_NHAZ_ABSpy) . Based on floor area covered / total floor area. </td>
      <td>%</td>
    </tr>
    <tr>
      <td>WAS_R_PERC_PY</td>
      <td>0 ≤ x ≤ 100</td>
      <td>Percent of waste disposed via recycling over the previous year. Applies to all
        assets</td>
      <td>%</td>
    </tr>
    <tr>
      <td>WAS_I_PERC_PY</td>
      <td>0 ≤ x ≤ 100</td>
      <td>Percent of waste disposed via incineration over the previous year. Applies to
        all assets</td>
      <td>%</td>
    </tr>
    <tr>
      <td>WAS_L_PERC_PY</td>
      <td>0 ≤ x ≤ 100</td>
      <td>Percent of waste disposed via landfills over the previous year. Applies to all
        assets</td>
      <td>%</td>
    </tr>
    <tr>
      <td>WAS_MAN_HAZ_ABS</td>
      <td>x ≥ 0</td>
      <td>The total weight of hazardous waste produced by the asset over
        the current year. Measured in metric tonnes. Applies only to managed assets</td>
      <td>t</td>
    </tr>
    <tr>
      <td>WAS_MAN_NHAZ_ABS</td>
      <td>x ≥ 0</td>
      <td>The total weight of non-hazardous waste produced by the asset over
        the current year. Measured in metric tonnes. Applies only to managed assets</td>
      <td>t</td>
    </tr>
    <tr>
      <td>WAS_MAN_PERC</td>
      <td>0 &lt; x ≤ 100</td>
      <td>Percent of the asset covered by the data above
        (WAS_MAN_HAZ_ABS), (WAS_MAN_NHAZ_ABS) . Based on
        floor area covered / total floor area. </td>
      <td>%</td>
    </tr>
    <tr>
      <td>WAS_IND_HAZ_ABS</td>
      <td>x ≥ 0</td>
      <td>The total weight of hazardous waste produced by the asset over
        the current year. Measured in metric tonnes. Applies only to indirectly managed
        assets</td>
      <td>t</td>
    </tr>
    <tr>
      <td>WAS_IND_NHAZ_ABS</td>
      <td>x ≥ 0</td>
      <td>The total weight of non-hazardous waste produced by the asset over
        the current year. Measured in metric tonnes. Applies only to indirectly managed
        assets</td>
      <td>t</td>
    </tr>
    <tr>
      <td>WAS_IND_PERC</td>
      <td>0 &lt; x ≤ 100</td>
      <td>Percent of the asset covered by the data above
        (WAS_MAN_HAZ_ABS), (WAS_MAN_NHAZ_ABS) . Based on
        floor area covered / total floor area. </td>
      <td>%</td>
    </tr>
    <tr>
      <td>WAS_R_PERC</td>
      <td>0 ≤ x ≤ 100</td>
      <td>Percent of waste disposed via recycling over the current year. Applies to all
        assets</td>
      <td>%</td>
    </tr>
    <tr>
      <td>WAS_I_PERC</td>
      <td>0 ≤ x ≤ 100</td>
      <td>Percent of waste disposed via incineration over the current year. Applies to
        all assets</td>
      <td>%</td>
    </tr>
    <tr>
      <td>WAS_L_PERC</td>
      <td>0 ≤ x ≤ 100</td>
      <td>Percent of waste disposed via landfills over the current year. Applies to all
        assets</td>
      <td>%</td>
    </tr>
  </tbody>
</table>