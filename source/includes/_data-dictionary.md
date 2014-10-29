#Data Dictionary

Property Code [pc] | Property Type
-------------------|--------------
RHS | Retail, High Street
RSM | Retail, Shopping Center
RWB | Retail, Warehouse
OFF | Office
DWH | Industrial, District Warehouse
OIN | Industrial, Manufacturing
RES | Residential
HOT | Hotel
HEC | Health Care
OTH | Other
OT2 | Other #2 

<table>
      <thead>
        <tr>
          <th>Data Variable</th>
          <th>Parameter</th>
          <th>Description</th>
          <th>Unit</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>ASSET_NAME</td>
          <td>Text</td>
          <td>The name of the asset</td>
          <td><br>
          </td>
        </tr>
        <tr>
          <td>ASSET_ADDRESS</td>
          <td>Text</td>
          <td>The asset's address, including building number, town, and
            state/providence</td>
          <td><br>
          </td>
        </tr>
        <tr>
          <td>ASSET_SIZE</td>
          <td>x &gt; 0</td>
          <td>The floor area of an asset in meters. See the GRESB survey guidance for further information.</td>
          <td><br>
          </td>
        </tr>
        <tr>
          <td>ASSET_OWN_[previous-year]</td>
          <td>0 ≤ x ≤ 12. Integer</td>
          <td>The number of months your fund/company has owned this asset in
            the previous year</td>
          <td><br>
          </td>
        </tr>
        <tr>
          <td>ASSET_OWN_[current-year]</td>
          <td>0 ≤ x ≤ 12. Integer</td>
          <td>The number of months your fund/company has owned this asset in
            the current year</td>
          <td><br>
          </td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_BCF_ABS[previous-year]</td>
          <td>x &gt; 0</td>
          <td>Fuel consumption from all common areas within the base building
            over the previous year. Measured in kilowatt hours (kWh). Applies only to managed
            assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_BCD_ABS[previous-year]</td>
          <td>x &gt; 0</td>
          <td>District heating and cooling consumption from all common areas
            within the base building over the previous year. Measured in kWh. Applies only to
            managed assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_BCE_ABS[previous-year]</td>
          <td>x &gt; 0</td>
          <td>Electricity consumption from all common areas within the base
            building measured in kWh over the previous year. Applies only to managed assets </td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_BSF_ABS[previous-year]</td>
          <td>x &gt; 0</td>
          <td>Fuel consumption of shared services or a central plant within the
            base building over the previous year. Measured in kWh. Applies only to managed
            assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_BSD_ABS[previous-year]</td>
          <td>x &gt; 0</td>
          <td>District heating and cooling consumption of shared services or a
            central plant within the base building over the previous year. Measured in kWh.
            Applies only to managed assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_BSE_ABS[previous-year]</td>
          <td>x &gt; 0</td>
          <td>Electricity consumption of shared services or a central plant
            within the base building over the previous year. Measured in kWh. Applies only to
            managed assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_BOF_ABS[previous-year]</td>
          <td>x &gt; 0</td>
          <td>Fuel consumption of outdoor, exterior, and parking areas over
            the previous year. Measured in kWh. Applies only to directly managed assets</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_BOE_ABS[previous-year]</td>
          <td>x &gt; 0</td>
          <td>Fuel consumption of outdoor, exterior, and parking areas over
            the previous year. Measured in kWh. Applies only to directly managed assets</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_TLF_ABS[previous-year]</td>
          <td>x &gt; 0</td>
          <td>Fuel consumption of tenant space purchased by a landlord over
            the previous year. Measured in kWh. Applies only to managed assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_TLD_ABS[previous-year]</td>
          <td>x &gt; 0</td>
          <td>District heating and cooling consumption of tenant space purchased
            by a landlord over the previous year. Measured in kWh. Applies only to managed
            assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_TLE_ABS[previous-year]</td>
          <td>x &gt; 0</td>
          <td>Electricity consumption of tenant space within the asset purchased
            by landlords over the previous year. Measured in kWh. Applies only to managed
            assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_TTF_ABS[previous-year]</td>
          <td>x &gt; 0</td>
          <td>Fuel consumption of all tenant space within the asset purchased by
            tenants in the previous year. Measured in kWh. Applies only to directly managed
            assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_TTD_ABS[previous-year]</td>
          <td>x &gt; 0</td>
          <td>District heating and cooling consumption of all tenant space
            within the asset purchased by tenants over the previous year. Measured in kWh.
            Applies only to managed assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_TTE_ABS[previous-year]</td>
          <td>x &gt; 0</td>
          <td>Electricity consumption of all tenant space within the asset
            purchased by tenants over the previous year. Measured in kWh. Applies only to
            managed assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_WCF_ABS[previous-year]</td>
          <td>x &gt; 0</td>
          <td>Fuel consumption within the rational building (tenant space and
            common areas combined) over the previous year. Measured in kWh. Applies only to
            managed assets</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_WCD_ABS[previous-year]</td>
          <td>x &gt; 0</td>
          <td>District heating and cooling consumption within the rational
            building (tenant space and common areas combined) over the previous year.
            Measured in kWh. Applies only to managed assets</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_WCE_ABS[previous-year]</td>
          <td>x &gt; 0</td>
          <td>Electricity consumption within the rational Building (tenant space
            and common areas combined) over the previous year. Measured in kWh. Applies only
            to managed assets</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_IND_WWF_ABS[previous-year]</td>
          <td>x &gt; 0</td>
          <td>Fuel consumption within the rational building (tenant space and
            common areas combined) over the previous year. Measured in kWh. Applies only to
            indirectly managed assets</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_IND_WWD_ABS[previous-year]</td>
          <td>x &gt; 0</td>
          <td>District heating and cooling consumption within the rational
            building (tenant space and common areas combined) over the previous year.
            Measured in kWh. Applies only to indirectly managed assets</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_IND_WWE_ABS[previous-year]</td>
          <td>x &gt; 0</td>
          <td>Electricity consumption within the rational building (tenant space
            and common areas combined) over the previous year. Measured in kWh. Applies only
            to indirectly managed assets</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_IND_WOF_ABS[previous-year]</td>
          <td>x &gt; 0</td>
          <td>Fuel consumption of outdoor, exterior, and parking areas over
            the previous year. Measured in kWh. Applies only to indirectly managed assets</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_IND_WOE_ABS[previous-year]</td>
          <td>x &gt; 0</td>
          <td>Electricity consumption of outdoor, exterior, and parking areas
            over the previous year. Measured in kWh. Applies only to indirectly managed
            assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_BCF_ABS[current-year]</td>
          <td>x &gt; 0</td>
          <td>Fuel consumption from all common areas of the base building over
            the current year. Measured in kWh. Applies only to managed assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_BCF_COV[current-year]</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the common areas specified in the field
            above (EN_[pc]_MAN_BCF_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_BCF_TOT[current-year]</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the common areas specified in the field
            above (EN_[pc]_MAN_BCF_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_BCD_ABS[current-year]</td>
          <td>x &gt; 0</td>
          <td>District heating and cooling consumption from all common areas of
            the base building over the current year. Measured in kWh. Applies only to
            managed assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_BCD_COV[current-year]</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the common areas specified in the field
            above (EN_[pc]_MAN_BCD_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_BCD_TOT[current-year]</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the common areas specified in the field
            above (EN_[pc]_MAN_BCD_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_BCE_ABS[current-year]</td>
          <td>x &gt; 0</td>
          <td>Electricity consumption from all common areas of the base building
            over the current year. Measured in kWh. Applies only to managed assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_BCE_COV[current-year]</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the common areas specified in the field
            above (EN_[pc]_MAN_BCE_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_BCE_TOT[current-year]</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the common areas specified in the field
            above (EN_[pc]_MAN_BCE_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_BSF_ABS[current-year]</td>
          <td>x &gt; 0</td>
          <td>Fuel consumption from all shared services or central plants of the
            base building over the current year. Measured in kWh. Applies only to managed
            assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_BSF_COV[current-year]</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the shared services or central plant
            specified in the field above (EN_[pc]_MAN_BSF_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_BSF_TOT[current-year]</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of shared services or the central plant
            specified in the field above (EN_[pc]_MAN_BSF_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_BSD_ABS[current-year]</td>
          <td>x &gt; 0</td>
          <td>District heating and cooling consumption from all shared services
            or central plants of the base building over the current year. Measured in kWh.
            Applies only to managed assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_BSD_COV[current-year]</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the shared services or the central plant
            specified in the field above (EN_[pc]_MAN_BSD_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_BSD_TOT[current-year]</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the shared services or the central plant
            specified in the field above (EN_[pc]_MAN_BSD_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_BSE_ABS[current-year]</td>
          <td>x &gt; 0</td>
          <td>Electricity consumption from all shared services or central plants
            of the base building over the current year. Measured in kWh. Applies only to
            managed assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_BSE_COV[current-year]</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the shared services or the central plant
            specified in the field above (EN_[pc]_MAN_BSE_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_BSE_TOT[current-year]</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the shared services or the central plant
            specified in the field above (EN_[pc]_MAN_BSE_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_BOF_ABS[current-year]</td>
          <td>x &gt; 0</td>
          <td>Fuel consumption from outdoor, exterior and parking areas of the
            asset over the current year. Measured in kWh. Applies only to managed assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_BOE_ABS[current-year]</td>
          <td>x &gt; 0</td>
          <td>Fuel consumption from outdoor, exterior, and parking areas of the
            asset over the current year. Measured in kWh. Applies only to managed assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_TLF_ABS[current-year]</td>
          <td>x &gt; 0</td>
          <td>Fuel consumption of tenant space purchased by landlords over the current year.
            Measured in kWh. Applies only to managed assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_TLF_COV[current-year]</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the tenant space purchased by landlords
            specified in the field above (EN_[pc]_MAN_TLF_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_TLF_TOT[current-year]</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the tenant space purchased by a landlord
            specified in the field above (EN_[pc]_MAN_TLF_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_TLD_ABS[current-year]</td>
          <td>x &gt; 0</td>
          <td>District heating and cooling consumption of tenant space purchased
            by a landlord over the current year. Measured in kWh. Applies only to managed
            assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_TLD_COV[current-year]</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the tenant space purchased by a landlord
            specified in the field above (EN_[pc]_MAN_TLD_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_TLD_TOT[current-year]</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the tenant space purchased by a landlord
            specified in the field above (EN_[pc]_MAN_TLD_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_TLE_ABS[current-year]</td>
          <td>x &gt; 0</td>
          <td>Electricity consumption of tenant space purchased by a landlord
            over the current year. Measured in kWh. Applies only to managed assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_TLE_COV[current-year]</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the tenant space purchased by a landlord
            specified in the field above (EN_[pc]_MAN_TLE_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_TLE_TOT[current-year]</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the tenant space purchased by a landlord
            specified in the field above (EN_[pc]_MAN_TLE_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_TTF_ABS[current-year]</td>
          <td>x &gt; 0</td>
          <td>Fuel consumption of tenant space purchased by tenants over the current year.
            Measured in kWh. Applies only to managed assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_TTF_COV[current-year]</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the tenant space purchased by tenants
            specified in the field above (EN_[pc]_MAN_TLE_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_TTF_TOT[current-year]</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the tenant space purchased by tenants
            specified in the field above (EN_[pc]_MAN_TLE_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_TTD_ABS[current-year]</td>
          <td>x &gt; 0</td>
          <td>District heating and cooling consumption of tenant space purchased
            by tenants over the current year. Measured in kWh. Applies only to managed
            assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_TTD_COV[current-year]</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the tenant space purchased by tenants
            specified in the field above (EN_[pc]_MAN_TTD_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_TTD_TOT[current-year]</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the tenant space purchased by tenants
            specified in the field above (EN_[pc]_MAN_TTD_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_TTE_ABS[current-year]</td>
          <td>x &gt; 0</td>
          <td>Electricity consumption of tenant space purchased by tenants over
            the current year. Measured in kWh. Applies only to managed assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_TTE_COV[current-year]</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the tenant space purchased by tenants
            specified in the field above (EN_[pc]_MAN_TTE_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_TTE_TOT[current-year]</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the tenant space purchased by tenants
            specified in the field above (EN_[pc]_MAN_TTE_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_WCF_ABS[current-year]</td>
          <td>x &gt; 0</td>
          <td>Fuel consumption within the rational building (tenant space and
            common areas combined) over the current year. Measured in kWh. Applies only to
            managed assets</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_WCF_COV[current-year]</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the rational building specified in the field
            above (EN_[pc]_MAN_WCF_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_WCF_TOT[current-year]</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the rational building specified in the
            field above (EN_[pc]_MAN_WCF_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_WCD_ABS[current-year]</td>
          <td>x &gt; 0</td>
          <td>District heating and cooling consumption within the rational
            building (tenant space and common areas combined) over the current year.
            Measured in kWh. Applies only to managed assets</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_WCD_COV[current-year]</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the rational building specified in the field
            above (EN_[pc]_MAN_WCD_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_WCD_TOT[current-year]</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the rational building specified in the
            field above (EN_[pc]_MAN_WCD_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_WCE_ABS[current-year]</td>
          <td>x &gt; 0</td>
          <td>Electricity consumption within the rational building (tenant space
            and common areas combined) over the current year. Measured in kWh. Applies only
            to managed assets</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_WCE_COV[current-year]</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the rational building specified in the field
            above (EN_[pc]_MAN_WCE_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>EN_[pc]_MAN_WCE_TOT[current-year]</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the rational building specified in the
            field above (EN_[pc]_MAN_WCE_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>EN_[pc]_IND_WWF_ABS[current-year]</td>
          <td>x &gt; 0</td>
          <td>Fuel consumption within the rational building (tenant space and
            common areas combined) over the current year. Measured in kWh. Applies only to
            indirectly managed assets</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_IND_WWF_COV[current-year]</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the rational building specified in the field
            above (EN_[pc]_IND_WWF_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>EN_[pc]_IND_WWF_TOT[current-year]</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the rational building specified in the
            field above (EN_[pc]_IND_WWF_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>EN_[pc]_IND_WWD_ABS[current-year]</td>
          <td>x &gt; 0</td>
          <td>District heating and cooling consumption within the rational
            building (tenant space and common areas combined) over the current year.
            Measured in kWh. Applies only to indirectly managed assets</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_IND_WWD_COV[current-year]</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the rational building specified in the field
            above (EN_[pc]_IND_WWD_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>EN_[pc]_IND_WWD_TOT[current-year]</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the rational building specified in the
            field above (EN_[pc]_IND_WWD_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>EN_[pc]_IND_WWE_ABS[current-year]</td>
          <td>x &gt; 0</td>
          <td>Electricity consumption within the rational building (tenant space
            and common areas combined) over the current year. Measured in kWh. Applies only
            to indirectly managed assets</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_IND_WWE_COV[current-year]</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the rational building specified in the field
            above (EN_[pc]_IND_WWE_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>EN_[pc]_IND_WWE_TOT[current-year]</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the rational building specified in the
            field above (EN_[pc]_IND_WWE_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>EN_[pc]_IND_WOF_ABS[current-year]</td>
          <td>x &gt; 0</td>
          <td>Fuel consumption of outdoor, exterior, and parking areas over
            the current year. Measured in kWh. Applies only to indirectly managed assets</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pc]_IND_WOE_ABS[current-year]</td>
          <td>x &gt; 0</td>
          <td>Electricity consumption of outdoor, exterior, and parking areas
            over the current year. Measured in kWh. Applies only to indirectly managed
            assets</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>GHG_[pc]_S1_ABS[previous-year]</td>
          <td>x &gt; 0</td>
          <td>Scope 1 greenhouse gas emissions over the previous year. Scope 1 is defined as
            all direct GHG emissions of the asset. Measured in metric tonnes.
            Applies to all assets </td>
          <td>t</td>
        </tr>
        <tr>
          <td>GHG_[pc]_S2_ABS[previous-year]</td>
          <td>x &gt; 0</td>
          <td>Scope 2 greenhouse gas emissions of the asset over the previous year. Scope 2
            is defined as indirect GHG emissions as a result of purchased
            electricity, heat, and steam, or other forms of energy. Measured in
            metric tonnes. Applies to all assets </td>
          <td>t</td>
        </tr>
        <tr>
          <td>GHG_[pc]_S3_ABS[previous-year]</td>
          <td>x &gt; 0</td>
          <td>Scope 3 greenhouse gas emissions over the previous year. Scope 3 is defined as
            all indirect GHG emissions that do not result from purchased energy.
            Scope 3 does not apply to all assets. Measured in metric tonnes</td>
          <td>t</td>
        </tr>
        <tr>
          <td>GHG_[pc]_S1_ABS[current-year]</td>
          <td>x &gt; 0</td>
          <td>Scope 1 greenhouse gas emissions over the current year. Scope 1 is defined as
            all direct GHG emissions of the asset. Measured in metric tonnes.
            Applies to all assets </td>
          <td>t</td>
        </tr>
        <tr>
          <td>GHG_[pc]_S1_COV[current-year]</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the asset specified in the field above
            (GHG_[pc]_S1_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>GHG_[pc]_S1_TOT[current-year]</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the asset specified in the field above
            (GHG_[pc]_S1_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>GHG_[pc]_S2_ABS[current-year]</td>
          <td>x &gt; 0</td>
          <td>Scope 2 greenhouse gas emissions of the asset over the current year. Scope 2
            is defined as indirect GHG emissions as a result of purchased
            electricity, heat, and steam. Measured in metric tonnes. Applies to
            all assets </td>
          <td>t</td>
        </tr>
        <tr>
          <td>GHG_[pc]_S2_COV[current-year]</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the asset specified in the field above
            (GHG_[pc]_S2_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>GHG_[pc]_S2_TOT[current-year]</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the asset specified in the field above
            (GHG_[pc]_S2_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>GHG_[pc]_S3_ABS[current-year]</td>
          <td>x &gt; 0</td>
          <td>Scope 3 greenhouse gas emissions over the current year. Scope 3 is defined as
            all indirect GHG emissions that do not result from the purchase of
            electricity, heat, or steam. Scope 3 does not apply to all assets.
            Measured in metric tonnes</td>
          <td>t</td>
        </tr>
        <tr>
          <td>GHG_[pc]_S3_COV[current-year]</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the asset specified in the field above
            (GHG_[pc]_S3_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>GHG_[pc]_S3_TOT[current-year]</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the asset specified in the field above
            (GHG_[pc]_S3_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>WAT_[pc]_MAN_BC_ABS[previous-year]</td>
          <td>x &gt; 0</td>
          <td>Water consumption of all common areas within the base building
            over the previous year. Measured in cubic meters. Applies only to managed assets</td>
          <td>m3</td>
        </tr>
        <tr>
          <td>WAT_[pc]_MAN_BO_ABS[previous-year]</td>
          <td>x &gt; 0</td>
          <td>Water consumption of all exterior or outdoor areas of the asset
            over the previous year. Measured in cubic meters. Applies only to managed assets</td>
          <td>m3</td>
        </tr>
        <tr>
          <td>WAT_[pc]_MAN_TL_ABS[previous-year]</td>
          <td>x &gt; 0</td>
          <td>Water consumption of tenant space purchase by landlords over the previous year.
            Measure in cubic meters. Applies only to managed assets</td>
          <td>m3</td>
        </tr>
        <tr>
          <td>WAT_[pc]_MAN_TT_ABS[previous-year]</td>
          <td>x &gt; 0</td>
          <td>Water consumption of tenant space purchase by tenants over the previous year.
            Measure in cubic meters. Applies only to managed assets</td>
          <td>m3</td>
        </tr>
        <tr>
          <td>WAT_[pc]_MAN_WC_ABS[previous-year]</td>
          <td>x &gt; 0</td>
          <td>Water consumption of the rational building (tenant space and
            common areas combined) over the previous year. Measured in cubic meters. Applies
            only to managed assets</td>
          <td>m3</td>
        </tr>
        <tr>
          <td>WAT_[pc]_IND_WW_ABS[previous-year]</td>
          <td>x &gt; 0</td>
          <td>Water consumption of the rational building (tenant space and
            common areas combined) over the previous year. Measured in cubic meters. Applies
            only to indirectly managed assets</td>
          <td>m3</td>
        </tr>
        <tr>
          <td>WAT_[pc]_IND_WO_ABS[previous-year]</td>
          <td>x &gt; 0</td>
          <td>Water consumption of exterior or outdoor areas of the asset over
            the previous year. Measured in cubic meters. Applies only to indirectly managed
            assets</td>
          <td>m3</td>
        </tr>
        <tr>
          <td>WAT_[pc]_MAN_BC_ABS[current-year]</td>
          <td>x &gt; 0</td>
          <td>Water consumption of all common areas within the base building
            over the current year. Measured in cubic meters. Applies only to managed assets</td>
          <td>m3</td>
        </tr>
        <tr>
          <td>WAT_[pc]_MAN_BC_COV[current-year]</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the common areas specified in the field
            above (WAT_[pc]_MAN_BC_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>WAT_[pc]_MAN_BC_TOT[current-year]</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the common areas specified in the field
            above (WAT_[pc]_MAN_BC_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>WAT_[pc]_MAN_BO_ABS[current-year]</td>
          <td>x &gt; 0</td>
          <td>Water consumption of all exterior or outdoor areas of the asset
            over the current year. Measured in cubic meters. Applies only to managed assets</td>
          <td>m3</td>
        </tr>
        <tr>
          <td>WAT_[pc]_MAN_TL_ABS[current-year]</td>
          <td>x &gt; 0</td>
          <td>Water consumption of tenant space purchase by landlords over the current year.
            Measure in cubic meters. Applies only to managed assets</td>
          <td>m3</td>
        </tr>
        <tr>
          <td>WAT_[pc]_MAN_TL_COV[current-year]</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the tenant space purchased by landlords
            specified in the field above (WAT_[pc]_MAN_TL_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>WAT_[pc]_MAN_TL_TOT[current-year]</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the tenant space purchased by landlords
            specified in the field above (WAT_[pc]_MAN_TL_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>WAT_[pc]_MAN_TT_ABS[current-year]</td>
          <td>x &gt; 0</td>
          <td>Water consumption of tenant space purchase by tenants over the current year.
            Measure in cubic meters. Applies only to managed assets</td>
          <td>m3</td>
        </tr>
        <tr>
          <td>WAT_[pc]_MAN_TT_COV[current-year]</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the tenant space purchased by tenants
            specified in the field above (WAT_[pc]_MAN_TT_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>WAT_[pc]_MAN_TT_TOT[current-year]</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the tenant space purchased by tenants
            specified in the field above (WAT_[pc]_MAN_TT_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>WAT_[pc]_MAN_WC_ABS[current-year]</td>
          <td>x &gt; 0</td>
          <td>Water consumption of the rational building (tenant space and
            common areas combined) over the current year. Measured in cubic meters. Applies
            only to managed assets </td>
          <td>m3</td>
        </tr>
        <tr>
          <td>WAT_[pc]_MAN_WC_COV[current-year]</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the rational building (tenant space and
            common areas combined) specified in the field above
            (WAT_[pc]_MAN_WC_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>WAT_[pc]_MAN_WC_TOT[current-year]</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the rational building (tenant space and
            common areas combined) specified in the field above
            (WAT_[pc]_MAN_WC_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>WAT_[pc]_IND_WW_ABS[current-year]</td>
          <td>x &gt; 0</td>
          <td>Water consumption of the rational building (tenant space and
            common areas combined) over the current year. Measured in cubic meters. Applies
            only to indirectly managed assets</td>
          <td>m3</td>
        </tr>
        <tr>
          <td>WAT_[pc]_IND_WW_COV[current-year]</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the rational building (tenant space and
            common areas combined) specified in the field above
            (WAT_[pc]_IND_WW_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>WAT_[pc]_IND_WW_TOT[current-year]</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the rational building (tenant space and
            common areas combined) specified in the field above
            (WAT_[pc]_IND_WW_ABS[current-year])</td>
          <td>m2</td>
        </tr>
        <tr>
          <td>WAT_[pc]_IND_WO_ABS[current-year]</td>
          <td>x &gt; 0</td>
          <td>Water consumption of outdoor or exterior areas of the asset over
            the current year. Measured in cubic meters. Applies only to indirectly managed
            assets</td>
          <td>m3</td>
        </tr>
        <tr>
          <td>WAS_[pc]_MAN_HAZ_ABS[previous-year]</td>
          <td>x ≥ 0</td>
          <td>The total weight of hazardous waste produced by the asset over
            the previous year. Measured in metric tonnes. Applies only to managed assets</td>
          <td>t</td>
        </tr>
        <tr>
          <td>WAS_[pc]_MAN_NHAZ_ABS[previous-year]</td>
          <td>x ≥ 0</td>
          <td>The total weight of non-hazardous waste produced by the asset over
            the previous year. Measured in metric tonnes. Applies only to managed assets</td>
          <td>t</td>
        </tr>
        <tr>
          <td>WAS_[pc]_MAN_PERC[previous-year]</td>
          <td>0 &lt; x ≤ 100</td>
          <td>Percent of the asset covered by the data above
            (WAS_[pc]_MAN_HAZ_ABS[previous-year]), (WAS_[pc]_MAN_NHAZ_ABS[previous-year]) . Based on
            floor area covered / total floor area. </td>
          <td>%</td>
        </tr>
        <tr>
          <td>WAS_[pc]_IND_HAZ_ABS[previous-year]</td>
          <td>x ≥ 0</td>
          <td>The total weight of hazardous waste produced by the asset over
            the previous year. Measured in metric tonnes. Applies only to indirectly managed
            assets</td>
          <td>t</td>
        </tr>
        <tr>
          <td>WAS_[pc]_IND_NHAZ_ABS[previous-year]</td>
          <td>x ≥ 0</td>
          <td>The total weight of non-hazardous waste produced by the asset over
            the previous year. Measured in metric tonnes. Applies only to indirectly managed
            assets</td>
          <td>t</td>
        </tr>
        <tr>
          <td>WAS_[pc]_IND_PERC[previous-year]</td>
          <td>0 &lt; x ≤ 100</td>
          <td>Percent of the asset covered by the data above
            (WAS_[pc]_IND_HAZ_ABS[previous-year]), (WAS_[pc]_IND_NHAZ_ABS[previous-year]) . Based on floor area covered / total floor area. </td>
          <td>%</td>
        </tr>
        <tr>
          <td>WAS_[pc]_R_PERC[previous-year]</td>
          <td>0 ≤ x ≤ 100</td>
          <td>Percent of waste disposed via recycling over the previous year. Applies to all
            assets</td>
          <td>%</td>
        </tr>
        <tr>
          <td>WAS_[pc]_I_PERC[previous-year]</td>
          <td>0 ≤ x ≤ 100</td>
          <td>Percent of waste disposed via incineration over the previous year. Applies to
            all assets</td>
          <td>%</td>
        </tr>
        <tr>
          <td>WAS_[pc]_L_PERC[previous-year]</td>
          <td>0 ≤ x ≤ 100</td>
          <td>Percent of waste disposed via landfills over the previous year. Applies to all
            assets</td>
          <td>%</td>
        </tr>
        <tr>
          <td>WAS_[pc]_MAN_HAZ_ABS[current-year]</td>
          <td>x ≥ 0</td>
          <td>The total weight of hazardous waste produced by the asset over
            the current year. Measured in metric tonnes. Applies only to managed assets</td>
          <td>t</td>
        </tr>
        <tr>
          <td>WAS_[pc]_MAN_NHAZ_ABS[current-year]</td>
          <td>x ≥ 0</td>
          <td>The total weight of non-hazardous waste produced by the asset over
            the current year. Measured in metric tonnes. Applies only to managed assets</td>
          <td>t</td>
        </tr>
        <tr>
          <td>WAS_[pc]_MAN_PERC[current-year]</td>
          <td>0 &lt; x ≤ 100</td>
          <td>Percent of the asset covered by the data above
            (WAS_[pc]_MAN_HAZ_ABS[current-year]), (WAS_[pc]_MAN_NHAZ_ABS[current-year]) . Based on
            floor area covered / total floor area. </td>
          <td>%</td>
        </tr>
        <tr>
          <td>WAS_[pc]_IND_HAZ_ABS[current-year]</td>
          <td>x ≥ 0</td>
          <td>The total weight of hazardous waste produced by the asset over
            the current year. Measured in metric tonnes. Applies only to indirectly managed
            assets</td>
          <td>t</td>
        </tr>
        <tr>
          <td>WAS_[pc]_IND_NHAZ_ABS[current-year]</td>
          <td>x ≥ 0</td>
          <td>The total weight of non-hazardous waste produced by the asset over
            the current year. Measured in metric tonnes. Applies only to indirectly managed
            assets</td>
          <td>t</td>
        </tr>
        <tr>
          <td>WAS_[pc]_IND_PERC[current-year]</td>
          <td>0 &lt; x ≤ 100</td>
          <td>Percent of the asset covered by the data above
            (WAS_[pc]_MAN_HAZ_ABS[current-year]), (WAS_[pc]_MAN_NHAZ_ABS[current-year]) . Based on
            floor area covered / total floor area. </td>
          <td>%</td>
        </tr>
        <tr>
          <td>WAS_[pc]_R_PERC[current-year]</td>
          <td>0 ≤ x ≤ 100</td>
          <td>Percent of waste disposed via recycling over the current year. Applies to all
            assets</td>
          <td>%</td>
        </tr>
        <tr>
          <td>WAS_[pc]_I_PERC[current-year]</td>
          <td>0 ≤ x ≤ 100</td>
          <td>Percent of waste disposed via incineration over the current year. Applies to
            all assets</td>
          <td>%</td>
        </tr>
        <tr>
          <td>WAS_[pc]_L_PERC[current-year]</td>
          <td>0 ≤ x ≤ 100</td>
          <td>Percent of waste disposed via landfills over the current year. Applies to all
            assets</td>
          <td>%</td>
        </tr>
      </tbody>
    </table>