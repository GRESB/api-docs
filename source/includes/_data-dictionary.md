#Data Dictionary

Property Code [pt] | Property Type
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
          <td>The <b>floor area</b> of the asset in m2/sq ft. See the GRESB survey guidance</td>
          <td><br>
          </td>
        </tr>
        <tr>
          <td>ASSET_OWN_2013</td>
          <td>0 ≤ x ≤ 12. Integer</td>
          <td>The number of months your fund/company has owned this asset in
            2013</td>
          <td><br>
          </td>
        </tr>
        <tr>
          <td>ASSET_OWN_2014</td>
          <td>0 ≤ x ≤ 12. Integer</td>
          <td>The number of months your fund/company has owned this asset in
            2014</td>
          <td><br>
          </td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_BCF_ABS2013</td>
          <td>x &gt; 0</td>
          <td>Fuel consumption from all common areas within the base building
            over 2013. Measured in kilowatt hours (kWh). Applies only to managed
            assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_(pt)_MAN_BCD_ABS2013</td>
          <td>x &gt; 0</td>
          <td>District heating and cooling consumption from all common areas
            within the base building over 2013. Measured in kWh. Applies only to
            managed assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_BCE_ABS2013</td>
          <td>x &gt; 0</td>
          <td>Electricity consumption from all common areas within the base
            building measured in kWh over 2013. Applies only to managed assets </td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_BSF_ABS2013</td>
          <td>x &gt; 0</td>
          <td>Fuel consumption of shared services or a central plant within the
            base building over 2013. Measured in kWh. Applies only to managed
            assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_BSD_ABS2013</td>
          <td>x &gt; 0</td>
          <td>District heating and cooling consumption of shared services or a
            central plant within the base building over 2013. Measured in kWh.
            Applies only to managed assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_BSE_ABS2013</td>
          <td>x &gt; 0</td>
          <td>Electricity consumption of shared services or a central plant
            within the base building over 2013. Measured in kWh. Applies only to
            managed assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_BOF_ABS2013</td>
          <td>x &gt; 0</td>
          <td>Fuel consumption of outdoor, exterior, and parking areas over
            2013. Measured in kWh. Applies only to directly managed assets</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_BOE_ABS2013</td>
          <td>x &gt; 0</td>
          <td>Fuel consumption of outdoor, exterior, and parking areas over
            2013. Measured in kWh. Applies only to directly managed assets</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_TLF_ABS2013</td>
          <td>x &gt; 0</td>
          <td>Fuel consumption of tenant space purchased by a landlord over
            2013. Measured in kWh. Applies only to managed assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_TLD_ABS2013</td>
          <td>x &gt; 0</td>
          <td>District heating and cooling consumption of tenant space purchased
            by a landlord over 2013. Measured in kWh. Applies only to managed
            assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_TLE_ABS2013</td>
          <td>x &gt; 0</td>
          <td>Electricity consumption of tenant space within the asset purchased
            by landlords over 2013. Measured in kWh. Applies only to managed
            assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_TTF_ABS2013</td>
          <td>x &gt; 0</td>
          <td>Fuel consumption of all tenant space within the asset purchased by
            tenants in 2013. Measured in kWh. Applies only to directly managed
            assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_TTD_ABS2013</td>
          <td>x &gt; 0</td>
          <td>District heating and cooling consumption of all tenant space
            within the asset purchased by tenants over 2013. Measured in kWh.
            Applies only to managed assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_TTE_ABS2013</td>
          <td>x &gt; 0</td>
          <td>Electricity consumption of all tenant space within the asset
            purchased by tenants over 2013. Measured in kWh. Applies only to
            managed assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_WCF_ABS2013</td>
          <td>x &gt; 0</td>
          <td>Fuel consumption within the rational building (tenant space and
            common areas combined) over 2013. Measured in kWh. Applies only to
            managed assets</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_WCD_ABS2013</td>
          <td>x &gt; 0</td>
          <td>District heating and cooling consumption within the rational
            building (tenant space and common areas combined) over 2013.
            Measured in kWh. Applies only to managed assets</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_WCE_ABS2013</td>
          <td>x &gt; 0</td>
          <td>Electricity consumption within the rational Building (tenant space
            and common areas combined) over 2013. Measured in kWh. Applies only
            to managed assets</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pt]_IND_WWF_ABS2013</td>
          <td>x &gt; 0</td>
          <td>Fuel consumption within the rational building (tenant space and
            common areas combined) over 2013. Measured in kWh. Applies only to
            indirectly managed assets</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pt]_IND_WWD_ABS2013</td>
          <td>x &gt; 0</td>
          <td>District heating and cooling consumption within the rational
            building (tenant space and common areas combined) over 2013.
            Measured in kWh. Applies only to indirectly managed assets</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pt]_IND_WWE_ABS2013</td>
          <td>x &gt; 0</td>
          <td>Electricity consumption within the rational building (tenant space
            and common areas combined) over 2013. Measured in kWh. Applies only
            to indirectly managed assets</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pt]_IND_WOF_ABS2013</td>
          <td>x &gt; 0</td>
          <td>Fuel consumption of outdoor, exterior, and parking areas over
            2013. Measured in kWh. Applies only to indirectly managed assets</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pt]_IND_WOE_ABS2013</td>
          <td>x &gt; 0</td>
          <td>Electricity consumption of outdoor, exterior, and parking areas
            over 2013. Measured in kWh. Applies only to indirectly managed
            assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_BCF_ABS2014</td>
          <td>x &gt; 0</td>
          <td>Fuel consumption from all common areas of the base builidng over
            2014. Measured in kWh. Applies only to managed assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_BCF_COV2014</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the common areas specified in the field
            above (EN_[pt]_MAN_BCF_ABS2014)</td>
          <td>m2/sq ft.</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_BCF_TOT2014</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the common areas specified in the field
            above (EN_[pt]_MAN_BCF_ABS2014)</td>
          <td>m2/sq ft.</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_BCD_ABS2014</td>
          <td>x &gt; 0</td>
          <td>District heating and cooling consumption from all common areas of
            the base builidng over 2014. Measured in kWh. Applies only to
            managed assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_BCD_COV2014</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the common areas specified in the field
            above (EN_[pt]_MAN_BCD_ABS2014)</td>
          <td>m2/sq ft.</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_BCD_TOT2014</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the common areas specified in the field
            above (EN_[pt]_MAN_BCD_ABS2014)</td>
          <td>m2/sq ft.</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_BCE_ABS2014</td>
          <td>x &gt; 0</td>
          <td>Electricity consumption from all common areas of the base builidng
            over 2014. Measured in kWh. Applies only to managed assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_BCE_COV2014</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the common areas specified in the field
            above (EN_[pt]_MAN_BCE_ABS2014)</td>
          <td>m2/sq ft.</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_BCE_TOT2014</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the common areas specified in the field
            above (EN_[pt]_MAN_BCE_ABS2014)</td>
          <td>m2/sq ft.</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_BSF_ABS2014</td>
          <td>x &gt; 0</td>
          <td>Fuel consumption from all shared services or central plants of the
            base builidng over 2014. Measured in kWh. Applies only to managed
            assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_BSF_COV2014</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the shared services or central plant
            specified in the field above (EN_[pt]_MAN_BSF_ABS2014)</td>
          <td>m2/sq ft.</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_BSF_TOT2014</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of shared services or the central plant
            specified in the field above (EN_[pt]_MAN_BSF_ABS2014)</td>
          <td>m2/sq ft.</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_BSD_ABS2014</td>
          <td>x &gt; 0</td>
          <td>District heating and cooling consumption from all shared services
            or central plants of the base builidng over 2014. Measured in kWh.
            Applies only to managed assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_BSD_COV2014</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the shared services or the central plant
            specified in the field above (EN_[pt]_MAN_BSD_ABS2014)</td>
          <td>m2/sq ft.</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_BSD_TOT2014</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the shared services or the central plant
            specified in the field above (EN_[pt]_MAN_BSD_ABS2014)</td>
          <td>m2/sq ft.</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_BSE_ABS2014</td>
          <td>x &gt; 0</td>
          <td>Electricity consumption from all shared services or central plants
            of the base builidng over 2014. Measured in kWh. Applies only to
            managed assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_BSE_COV2014</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the shared services or the central plant
            specified in the field above (EN_[pt]_MAN_BSE_ABS2014)</td>
          <td>m2/sq ft.</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_BSE_TOT2014</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the shared services or the central plant
            specified in the field above (EN_[pt]_MAN_BSE_ABS2014)</td>
          <td>m2/sq ft.</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_BOF_ABS2014</td>
          <td>x &gt; 0</td>
          <td>Fuel consumption from outdoor, exterior and parking areas of the
            asset over 2014. Measured in kWh. Applies only to managed assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_BOE_ABS2014</td>
          <td>x &gt; 0</td>
          <td>Fuel consumption from outdoor, exterior, and parking areas of the
            asset over 2014. Measured in kWh. Applies only to managed assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_TLF_ABS2014</td>
          <td>x &gt; 0</td>
          <td>Fuel consumption of tenant space purchased by landlords over 2014.
            Measured in kWh. Applies only to managed assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_TLF_COV2014</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the tenant space purchased by landlords
            specified in the field above (EN_[pt]_MAN_TLF_ABS2014)</td>
          <td>m2/sq. ft.</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_TLF_TOT2014</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the tenant space purchased by a landlord
            specified in the field above (EN_[pt]_MAN_TLF_ABS2014)</td>
          <td>m2/sq. ft.</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_TLD_ABS2014</td>
          <td>x &gt; 0</td>
          <td>District heating and cooling consumption of tenant space purchased
            by a landlord over 2014. Measured in kWh. Applies only to managed
            assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_TLD_COV2014</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the tenant space purchased by a landlord
            specified in the field above (EN_[pt]_MAN_TLD_ABS2014)</td>
          <td>m2/sq. ft.</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_TLD_TOT2014</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the tenant space purchased by a landlord
            specified in the field above (EN_[pt]_MAN_TLD_ABS2014)</td>
          <td>m2/sq. ft.</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_TLE_ABS2014</td>
          <td>x &gt; 0</td>
          <td>Electricity consumption of tenant space purchased by a landlord
            over 2014. Measured in kWh. Applies only to managed assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_TLE_COV2014</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the tenant space purchased by a landlord
            specified in the field above (EN_[pt]_MAN_TLE_ABS2014)</td>
          <td>m2/sq. ft.</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_TLE_TOT2014</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the tenant space purchased by a landlord
            specified in the field above (EN_[pt]_MAN_TLE_ABS2014)</td>
          <td>m2/sq. ft.</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_TTF_ABS2014</td>
          <td>x &gt; 0</td>
          <td>Fuel consumption of tenant space purchased by tenants over 2014.
            Measured in kWh. Applies only to managed assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_TTF_COV2014</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the tenant space purchased by tenants
            specified in the field above (EN_[pt]_MAN_TLE_ABS2014)</td>
          <td>m2/sq. ft.</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_TTF_TOT2014</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the tenant space purchased by tenants
            specified in the field above (EN_[pt]_MAN_TLE_ABS2014)</td>
          <td>m2/sq. ft.</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_TTD_ABS2014</td>
          <td>x &gt; 0</td>
          <td>District heating and cooling consumption of tenant space purchased
            by tenants over 2014. Measured in kWh. Applies only to managed
            assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_TTD_COV2014</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the tenant space purchased by tenants
            specified in the field above (EN_[pt]_MAN_TTD_ABS2014)</td>
          <td>m2/sq. ft.</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_TTD_TOT2014</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the tenant space purchased by tenants
            specified in the field above (EN_[pt]_MAN_TTD_ABS2014)</td>
          <td>m2/sq. ft.</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_TTE_ABS2014</td>
          <td>x &gt; 0</td>
          <td>Electricity consumption of tenant space purchased by tenants over
            2014. Measured in kWh. Applies only to managed assets.</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_TTE_COV2014</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the tenant space purchased by tenants
            specified in the field above (EN_[pt]_MAN_TTE_ABS2014)</td>
          <td>m2/sq. ft.</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_TTE_TOT2014</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the tenant space purchased by tenants
            specified in the field above (EN_[pt]_MAN_TTE_ABS2014)</td>
          <td>m2/sq. ft.</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_WCF_ABS2014</td>
          <td>x &gt; 0</td>
          <td>Fuel consumption within the rational building (tenant space and
            common areas combined) over 2014. Measured in kWh. Applies only to
            managed assets</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_WCF_COV2014</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the rational building specified in the field
            above (EN_[pt]_MAN_WCF_ABS2014)</td>
          <td>m2/sq. ft.</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_WCF_TOT2014</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the rational building specified in the
            field above (EN_[pt]_MAN_WCF_ABS2014)</td>
          <td>m2/sq. ft.</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_WCD_ABS2014</td>
          <td>x &gt; 0</td>
          <td>District heating and cooling consumption within the rational
            building (tenant space and common areas combined) over 2014.
            Measured in kWh. Applies only to managed assets</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_WCD_COV2014</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the rational building specified in the field
            above (EN_[pt]_MAN_WCD_ABS2014)</td>
          <td>m2/sq. ft.</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_WCD_TOT2014</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the rational building specified in the
            field above (EN_[pt]_MAN_WCD_ABS2014)</td>
          <td>m2/sq. ft.</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_WCE_ABS2014</td>
          <td>x &gt; 0</td>
          <td>Electricity consumption within the rational building (tenant space
            and common areas combined) over 2014. Measured in kWh. Applies only
            to managed assets</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_WCE_COV2014</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the rational building specified in the field
            above (EN_[pt]_MAN_WCE_ABS2014)</td>
          <td>m2/sq. ft.</td>
        </tr>
        <tr>
          <td>EN_[pt]_MAN_WCE_TOT2014</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the rational building specified in the
            field above (EN_[pt]_MAN_WCE_ABS2014)</td>
          <td>m2/sq. ft.</td>
        </tr>
        <tr>
          <td>EN_[pt]_IND_WWF_ABS2014</td>
          <td>x &gt; 0</td>
          <td>Fuel consumption within the rational building (tenant space and
            common areas combined) over 2014. Measured in kWh. Applies only to
            indirectly managed assets</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pt]_IND_WWF_COV2014</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the rational building specified in the field
            above (EN_[pt]_IND_WWF_ABS2014)</td>
          <td>m2/sq. ft.</td>
        </tr>
        <tr>
          <td>EN_[pt]_IND_WWF_TOT2014</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the rational building specified in the
            field above (EN_[pt]_IND_WWF_ABS2014)</td>
          <td>m2/sq. ft.</td>
        </tr>
        <tr>
          <td>EN_[pt]_IND_WWD_ABS2014</td>
          <td>x &gt; 0</td>
          <td>District heating and cooling consumption within the rational
            building (tenant space and common areas combined) over 2014.
            Measured in kWh. Applies only to indirectly managed assets</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pt]_IND_WWD_COV2014</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the rational building specified in the field
            above (EN_[pt]_IND_WWD_ABS2014)</td>
          <td>m2/sq. ft.</td>
        </tr>
        <tr>
          <td>EN_[pt]_IND_WWD_TOT2014</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the rational building specified in the
            field above (EN_[pt]_IND_WWD_ABS2014)</td>
          <td>m2/sq. ft.</td>
        </tr>
        <tr>
          <td>EN_[pt]_IND_WWE_ABS2014</td>
          <td>x &gt; 0</td>
          <td>Electricity consumption within the rational building (tenant space
            and common areas combined) over 2014. Measured in kWh. Applies only
            to indirectly managed assets</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pt]_IND_WWE_COV2014</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the rational building specified in the field
            above (EN_[pt]_IND_WWE_ABS2014)</td>
          <td>m2/sq. ft.</td>
        </tr>
        <tr>
          <td>EN_[pt]_IND_WWE_TOT2014</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the rational building specified in the
            field above (EN_[pt]_IND_WWE_ABS2014)</td>
          <td>m2/sq. ft.</td>
        </tr>
        <tr>
          <td>EN_[pt]_IND_WOF_ABS2014</td>
          <td>x &gt; 0</td>
          <td>Fuel consumption of outdoor, exterior, and parking areas over
            2014. Measured in kWh. Applies only to indirectly managed assets</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>EN_[pt]_IND_WOE_ABS2014</td>
          <td>x &gt; 0</td>
          <td>Electricity consumption of outdoor, exterior, and parking areas
            over 2014. Measured in kWh. Applies only to indirectly managed
            assets</td>
          <td>kWh</td>
        </tr>
        <tr>
          <td>GHG_[pt]_S1_ABS2013</td>
          <td>x &gt; 0</td>
          <td>Scope 1 greenhouse gas emissions over 2013. Scope 1 is defined as
            all direct GHG emissions of the asset. Measured in metric tonnes.
            Applies to all assets </td>
          <td>t</td>
        </tr>
        <tr>
          <td>GHG_[pt]_S2_ABS2013</td>
          <td>x &gt; 0</td>
          <td>Scope 2 greenhouse gas emissions of the asset over 2013. Scope 2
            is defined as indirect GHG emissions as a result of purchased
            electricity, heat, and steam, or other forms of energy. Measured in
            metric tonnes. Applies to all assets </td>
          <td>t</td>
        </tr>
        <tr>
          <td>GHG_[pt]_S3_ABS2013</td>
          <td>x &gt; 0</td>
          <td>Scope 3 greenhouse gas emissions over 2013. Scope 3 is defined as
            all indirect GHG emissions that do not result from purchased energy.
            Scope 3 does not apply to all assets. Measured in metric tonnes</td>
          <td>t</td>
        </tr>
        <tr>
          <td>GHG_[pt]_S1_ABS2014</td>
          <td>x &gt; 0</td>
          <td>Scope 1 greenhouse gas emissions over 2014. Scope 1 is defined as
            all direct GHG emissions of the asset. Measured in metric tonnes.
            Applies to all assets </td>
          <td>t</td>
        </tr>
        <tr>
          <td>GHG_[pt]_S1_COV2014</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the asset specified in the field above
            (GHG_[pt]_S1_ABS2014)</td>
          <td>m2/sq. ft.</td>
        </tr>
        <tr>
          <td>GHG_[pt]_S1_TOT2014</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the asset specified in the field above
            (GHG_[pt]_S1_ABS2014)</td>
          <td>m2/sq. ft.</td>
        </tr>
        <tr>
          <td>GHG_[pt]_S2_ABS2014</td>
          <td>x &gt; 0</td>
          <td>Scope 2 greenhouse gas emissions of the asset over 2014. Scope 2
            is defined as indirect GHG emissions as a result of purchased
            electricity, heat, and steam. Measured in metric tonnes. Applies to
            all assets </td>
          <td>t</td>
        </tr>
        <tr>
          <td>GHG_[pt]_S2_COV2014</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the asset specified in the field above
            (GHG_[pt]_S2_ABS2014)</td>
          <td>m2/sq. ft.</td>
        </tr>
        <tr>
          <td>GHG_[pt]_S2_TOT2014</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the asset specified in the field above
            (GHG_[pt]_S2_ABS2014)</td>
          <td>m2/sq. ft.</td>
        </tr>
        <tr>
          <td>GHG_[pt]_S3_ABS2014</td>
          <td>x &gt; 0</td>
          <td>Scope 3 greenhouse gas emissions over 2014. Scope 3 is defined as
            all indirect GHG emissions that do not result from the purchase of
            electricity, heat, or steam. Scope 3 does not apply to all assets.
            Measured in metric tonnes</td>
          <td>t</td>
        </tr>
        <tr>
          <td>GHG_[pt]_S3_COV2014</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the asset specified in the field above
            (GHG_[pt]_S3_ABS2014)</td>
          <td>m2/sq. ft.</td>
        </tr>
        <tr>
          <td>GHG_[pt]_S3_TOT2014</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the asset specified in the field above
            (GHG_[pt]_S3_ABS2014)</td>
          <td>m2/sq. ft.</td>
        </tr>
        <tr>
          <td>WAT_[pt]_MAN_BC_ABS2013</td>
          <td>x &gt; 0</td>
          <td>Water consumption of all common areas within the base building
            over 2013. Measured in cubic meters. Applies only to managed assets</td>
          <td>m3</td>
        </tr>
        <tr>
          <td>WAT_[pt]_MAN_BO_ABS2013</td>
          <td>x &gt; 0</td>
          <td>Water consumption of all exterior or outdoor areas of the asset
            over 2013. Measured in cubic meters. Applies only to managed assets</td>
          <td>m3</td>
        </tr>
        <tr>
          <td>WAT_[pt]_MAN_TL_ABS2013</td>
          <td>x &gt; 0</td>
          <td>Water consumption of tenant space purchase by landlords over 2013.
            Measure in cubic meters. Applies only to managed assets</td>
          <td>m3</td>
        </tr>
        <tr>
          <td>WAT_[pt]_MAN_TT_ABS2013</td>
          <td>x &gt; 0</td>
          <td>Water consumption of tenant space purchase by tenants over 2013.
            Measure in cubic meters. Applies only to managed assets</td>
          <td>m3</td>
        </tr>
        <tr>
          <td>WAT_[pt]_MAN_WC_ABS2013</td>
          <td>x &gt; 0</td>
          <td>Water consumption of the rational building (tenant space and
            common areas combined) over 2013. Measured in cubic meters. Applies
            only to managed assets</td>
          <td>m3</td>
        </tr>
        <tr>
          <td>WAT_[pt]_IND_WW_ABS2013</td>
          <td>x &gt; 0</td>
          <td>Water consumption of the rational building (tenant space and
            common areas combined) over 2013. Measured in cubic meters. Applies
            only to indirectly managed assets</td>
          <td>m3</td>
        </tr>
        <tr>
          <td>WAT_[pt]_IND_WO_ABS2013</td>
          <td>x &gt; 0</td>
          <td>Water consumption of exterior or outdoor areas of the asset over
            2013. Measured in cubic meters. Applies only to indirectly managed
            assets</td>
          <td>m3</td>
        </tr>
        <tr>
          <td>WAT_[pt]_MAN_BC_ABS2014</td>
          <td>x &gt; 0</td>
          <td>Water consumption of all common areas within the base building
            over 2014. Measured in cubic meters. Applies only to managed assets</td>
          <td>m3</td>
        </tr>
        <tr>
          <td>WAT_[pt]_MAN_BC_COV2014</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the common areas specified in the field
            above (WAT_[pt]_MAN_BC_ABS2014)</td>
          <td>m2/sq. ft.</td>
        </tr>
        <tr>
          <td>WAT_[pt]_MAN_BC_TOT2014</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the common areas specified in the field
            above (WAT_[pt]_MAN_BC_ABS2014)</td>
          <td>m2/sq. ft.</td>
        </tr>
        <tr>
          <td>WAT_[pt]_MAN_BO_ABS2014</td>
          <td>x &gt; 0</td>
          <td>Water consumption of all exterior or outdoor areas of the asset
            over 2014. Measured in cubic meters. Applies only to managed assets</td>
          <td>m3</td>
        </tr>
        <tr>
          <td>WAT_[pt]_MAN_TL_ABS2014</td>
          <td>x &gt; 0</td>
          <td>Water consumption of tenant space purchase by landlords over 2014.
            Measure in cubic meters. Applies only to managed assets</td>
          <td>m3</td>
        </tr>
        <tr>
          <td>WAT_[pt]_MAN_TL_COV2014</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the tenant space purchased by landlords
            specified in the field above (WAT_[pt]_MAN_TL_ABS2014)</td>
          <td>m2/sq. ft.</td>
        </tr>
        <tr>
          <td>WAT_[pt]_MAN_TL_TOT2014</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the tenant space purchased by landlords
            specified in the field above (WAT_[pt]_MAN_TL_ABS2014)</td>
          <td>m2/sq. ft.</td>
        </tr>
        <tr>
          <td>WAT_[pt]_MAN_TT_ABS2014</td>
          <td>x &gt; 0</td>
          <td>Water consumption of tenant space purchase by tenants over 2014.
            Measure in cubic meters. Applies only to managed assets</td>
          <td>m3</td>
        </tr>
        <tr>
          <td>WAT_[pt]_MAN_TT_COV2014</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the tenant space purchased by tenants
            specified in the field above (WAT_[pt]_MAN_TT_ABS2014)</td>
          <td>m2/sq. ft.</td>
        </tr>
        <tr>
          <td>WAT_[pt]_MAN_TT_TOT2014</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the tenant space purchased by tenants
            specified in the field above (WAT_[pt]_MAN_TT_ABS2014)</td>
          <td>m2/sq. ft.</td>
        </tr>
        <tr>
          <td>WAT_[pt]_MAN_WC_ABS2014</td>
          <td>x &gt; 0</td>
          <td>Water consumption of the rational building (tenant space and
            common areas combined) over 2014. Measured in cubic meters. Applies
            only to managed assets </td>
          <td>m3</td>
        </tr>
        <tr>
          <td>WAT_[pt]_MAN_WC_COV2014</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the rational building (tenant space and
            common areas combined) specified in the field above
            (WAT_[pt]_MAN_WC_ABS2014)</td>
          <td>m2/sq. ft.</td>
        </tr>
        <tr>
          <td>WAT_[pt]_MAN_WC_TOT2014</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the rational building (tenant space and
            common areas combined) specified in the field above
            (WAT_[pt]_MAN_WC_ABS2014)</td>
          <td>m2/sq. ft.</td>
        </tr>
        <tr>
          <td>WAT_[pt]_IND_WW_ABS2014</td>
          <td>x &gt; 0</td>
          <td>Water consumption of the rational building (tenant space and
            common areas combined) over 2014. Measured in cubic meters. Applies
            only to indirectly managed assets</td>
          <td>m3</td>
        </tr>
        <tr>
          <td>WAT_[pt]_IND_WW_COV2014</td>
          <td>x &gt; 0</td>
          <td>Data coverage area of the rational building (tenant space and
            common areas combined) specified in the field above
            (WAT_[pt]_IND_WW_ABS2014)</td>
          <td>m2/sq. ft.</td>
        </tr>
        <tr>
          <td>WAT_[pt]_IND_WW_TOT2014</td>
          <td>x &gt; 0</td>
          <td>Maximum coverage area of the rational building (tenant space and
            common areas combined) specified in the field above
            (WAT_[pt]_IND_WW_ABS2014)</td>
          <td>m2/sq. ft.</td>
        </tr>
        <tr>
          <td>WAT_[pt]_IND_WO_ABS2014</td>
          <td>x &gt; 0</td>
          <td>Water consumption of outdoor or exterior areas of the asset over
            2014. Measured in cubic meters. Applies only to indirectly managed
            assets</td>
          <td>m3</td>
        </tr>
        <tr>
          <td>WAS_[pt]_MAN_HAZ_ABS2013</td>
          <td>x ≥ 0</td>
          <td>The total weight of hazardous waste produced by the asset over
            2013. Measured in metric tonnes. Applies only to managed assets</td>
          <td>t</td>
        </tr>
        <tr>
          <td>WAS_[pt]_MAN_NHAZ_ABS2013</td>
          <td>x ≥ 0</td>
          <td>The total weight of non-hazardous waste produced by the asset over
            2013. Measured in metric tonnes. Applies only to managed assets</td>
          <td>t</td>
        </tr>
        <tr>
          <td>WAS_[pt]_MAN_PERC2013</td>
          <td>0 &lt; x ≤ 100</td>
          <td>Percent of the asset covered by the data above
            (WAS_[pt]_MAN_HAZ_ABS2013), (WAS_[pt]_MAN_NHAZ_ABS2013) . Based on
            floor area covered / total floor area. </td>
          <td>%</td>
        </tr>
        <tr>
          <td>WAS_[pt]_IND_HAZ_ABS2013</td>
          <td>x ≥ 0</td>
          <td>The total weight of hazardous waste produced by the asset over
            2013. Measured in metric tonnes. Applies only to indirectly managed
            assets</td>
          <td>t</td>
        </tr>
        <tr>
          <td>WAS_[pt]_IND_NHAZ_ABS2013</td>
          <td>x ≥ 0</td>
          <td>The total weight of non-hazardous waste produced by the asset over
            2013. Measured in metric tonnes. Applies only to indirectly managed
            assets</td>
          <td>t</td>
        </tr>
        <tr>
          <td>WAS_[pt]_IND_PERC2013</td>
          <td>0 &lt; x ≤ 100</td>
          <td>Percent of the asset covered by the data above
            (WAS_[pt]_IND_HAZ_ABS2013), (WAS_[pt]_IND_NHAZ_ABS2013) . Based on
            floor area covered / total floor area. </td>
          <td>%</td>
        </tr>
        <tr>
          <td>WAS_[pt]_R_PERC2013</td>
          <td>0 ≤ x ≤ 100</td>
          <td>Percent of waste disposed via recycling over 2013. Applies to all
            assets</td>
          <td>%</td>
        </tr>
        <tr>
          <td>WAS_[pt]_I_PERC2013</td>
          <td>0 ≤ x ≤ 100</td>
          <td>Percent of waste disposed via incineration over 2013. Applies to
            all assets</td>
          <td>%</td>
        </tr>
        <tr>
          <td>WAS_[pt]_L_PERC2013</td>
          <td>0 ≤ x ≤ 100</td>
          <td>Percent of waste disposed via landfills over 2013. Applies to all
            assets</td>
          <td>%</td>
        </tr>
        <tr>
          <td>WAS_[pt]_MAN_HAZ_ABS2014</td>
          <td>x ≥ 0</td>
          <td>The total weight of hazardous waste produced by the asset over
            2014. Measured in metric tonnes. Applies only to managed assets</td>
          <td>t</td>
        </tr>
        <tr>
          <td>WAS_[pt]_MAN_NHAZ_ABS2014</td>
          <td>x ≥ 0</td>
          <td>The total weight of non-hazardous waste produced by the asset over
            2014. Measured in metric tonnes. Applies only to managed assets</td>
          <td>t</td>
        </tr>
        <tr>
          <td>WAS_[pt]_MAN_PERC2014</td>
          <td>0 &lt; x ≤ 100</td>
          <td>Percent of the asset covered by the data above
            (WAS_[pt]_MAN_HAZ_ABS2014), (WAS_[pt]_MAN_NHAZ_ABS2014) . Based on
            floor area covered / total floor area. </td>
          <td>%</td>
        </tr>
        <tr>
          <td>WAS_[pt]_IND_HAZ_ABS2014</td>
          <td>x ≥ 0</td>
          <td>The total weight of hazardous waste produced by the asset over
            2014. Measured in metric tonnes. Applies only to indirectly managed
            assets</td>
          <td>t</td>
        </tr>
        <tr>
          <td>WAS_[pt]_IND_NHAZ_ABS2014</td>
          <td>x ≥ 0</td>
          <td>The total weight of non-hazardous waste produced by the asset over
            2014. Measured in metric tonnes. Applies only to indirectly managed
            assets</td>
          <td>t</td>
        </tr>
        <tr>
          <td>WAS_[pt]_IND_PERC2014</td>
          <td>0 &lt; x ≤ 100</td>
          <td>Percent of the asset covered by the data above
            (WAS_[pt]_MAN_HAZ_ABS2014), (WAS_[pt]_MAN_NHAZ_ABS2014) . Based on
            floor area covered / total floor area. </td>
          <td>%</td>
        </tr>
        <tr>
          <td>WAS_[pt]_R_PERC2014</td>
          <td>0 ≤ x ≤ 100</td>
          <td>Percent of waste disposed via recycling over 2014. Applies to all
            assets</td>
          <td>%</td>
        </tr>
        <tr>
          <td>WAS_[pt]_I_PERC2014</td>
          <td>0 ≤ x ≤ 100</td>
          <td>Percent of waste disposed via incineration over 2014. Applies to
            all assets</td>
          <td>%</td>
        </tr>
        <tr>
          <td>WAS_[pt]_L_PERC2014</td>
          <td>0 ≤ x ≤ 100</td>
          <td>Percent of waste disposed via landfills over 2014. Applies to all
            assets</td>
          <td>%</td>
        </tr>
      </tbody>
    </table>