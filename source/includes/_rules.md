# Integrity Rules

The GRESB Portal contains integrity rules to ensure data quality. These integrity rules are displayed as validation warnings and are enforced in the Asset Portal. For best practice GRESB will lists the integrity rules enforced in the Asset Portal, as well as integrity rules applied in the scoring algorithm.

## Asset Portal

* `partners_id` - must be present
* `property_type` - must be present and one of the list values
* `asset_country` - must be present and one of the list values
* `asset_address` - must be present and contain a location, please be as specific as possible (e.g. Barbara Strozzilaan 101 1083 HN Amsterdam, or Barbara Strozzilaan 101 Amsterdam, or 1083 HN Amsterdam, or Amsterdam)
* `asset_const_year` must be a four digit positive number
* `asset_ind` - must be present 
* `asset_size` - must be present
* `asset_own` - must be present and between 0-12
* `major_renovation` - must be present
* `dc_change` - must be present
* `cov` (e.g. `en_man_bcf_cov`) ≤ `tot` (e.g. `en_man_bcf_tot`)
* `man` (e.g. `en_man_bcf_cov`) only valid for managed assets
* `ind` (e.g. `en_ind_wwg_abs`) only valid for indirectly managed assets
* `abs` (e.g. `en_man_bcf_abs`), `cov` (e.g. `en_man_bcf_cov`), and `tot` (e.g. `en_man_bcf_tot`) must either all be present or all not present

## Scoring Algorithm

* `asset_const_year` may never be larger than the current year - 1
* `asset_gav` is an abnormalty above 5500, likely due to incorrect reporting unit (million USD required)
* `asset_size` for an asset reporting on whole building must equal `asset_size_whole`
* `asset_size` for an asset reporting on base building + tenant space has the conditions `asset_size >= area_size_common + max(area_size_landlord, area_size_tenant)` AND `asset_size <= area_size_common + area_size_landlord + area_size_tenant`
* `tot` (e.g. `en_man_bcf_tot`) may never be larger than the `area_size` of the reported area (e.g. `area_size_common`)

## Treshold Values

<table rules='all' id='asset_level_data_dictionary'>
  <thead>
    <tr>
      <th>Property type</th>
      <th>Lower energy intensity threshold</th>
      <th>Upper energy intensity threshold</th>
      <th>Lower GHG intensity threshold</th>
      <th>Upper GHG intensity threshold</th>
      <th>Lower water intensity threshold</th>
      <th>Upper water intensity threshold</th>
      <th>Lower waste intensity threshold</th>
      <th>Upper waste intensity threshold</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Retail, High Street</td>
      <td>40 kWh m-²</td>
      <td>800 kWh m-²</td>
      <td>0 kg m-²</td>
      <td>400 kg m-²</td>
      <td>0 l m-²</td>
      <td>5000 l m-²</td>
      <td>0 kg m-²</td>
      <td>400 kg m-²</td>
    </tr>
    <tr>
      <td>Retail, Shopping Center</td>
      <td>40 kWh m-²</td>
      <td>800 kWh m-²</td>
      <td>0 kg m-²</td>
      <td>400 kg m-²</td>
      <td>0 l m-²</td>
      <td>5000 l m-²</td>
      <td>0 kg m-²</td>
      <td>400 kg m-²</td>
    </tr>
    <tr>
      <td>Retail, Warehouse</td>
      <td>10 kWh m-²</td>
      <td>400 kWh m-²</td>
      <td>0 kg m-²</td>
      <td>300 kg m-²</td>
      <td>0 l m-²</td>
      <td>3000 l m-²</td>
      <td>0 kg m-²</td>
      <td>400 kg m-²</td>
    </tr>
    <tr>
      <td>Office</td>
      <td>80 kWh m-²</td>
      <td>600 kWh m-²</td>
      <td>0 kg m-²</td>
      <td>400 kg m-²</td>
      <td>0 l m-²</td>
      <td>4000 l m-²</td>
      <td>0 kg m-²</td>
      <td>300 kg m-²</td>
    </tr>
    <tr>
      <td>Industrial, Distribution Warehouse</td>
      <td>10 kWh m-²</td>
      <td>400 kWh m-²</td>
      <td>0 kg m-²</td>
      <td>200 kg m-²</td>
      <td>0 l m-²</td>
      <td>2000 l m-²</td>
      <td>0 kg m-²</td>
      <td>200 kg m-²</td>
    </tr>
    <tr>
      <td>Industrial, Business Parks</td>
      <td>1 kWh m-²</td>
      <td>400 kWh m-²</td>
      <td>0 kg m-²</td>
      <td>200 kg m-²</td>
      <td>0 l m-²</td>
      <td>2000 l m-²</td>
      <td>0 kg m-²</td>
      <td>200 kg m-²</td>
    </tr>
    <tr>
      <td>Industrial, Manufacturing</td>
      <td>10 kWh m-²</td>
      <td>400 kWh m-²</td>
      <td>0 kg m-²</td>
      <td>300 kg m-²</td>
      <td>0 l m-²</td>
      <td>3000 l m-²</td>
      <td>0 kg m-²</td>
      <td>400 kg m-²</td>
    </tr>
    <tr>
      <td>Residential, Multi-family</td>
      <td>40 kWh m-²</td>
      <td>600 kWh m-²</td>
      <td>0 kg m-²</td>
      <td>300 kg m-²</td>
      <td>0 l m-²</td>
      <td>4000 l m-²</td>
      <td>0 kg m-²</td>
      <td>300 kg m-²</td>
    </tr>
    <tr>
      <td>Residential, Family Homes</td>
      <td>40 kWh m-²</td>
      <td>600 kWh m-²</td>
      <td>0 kg m-²</td>
      <td>300 kg m-²</td>
      <td>0 l m-²</td>
      <td>4000 l m-²</td>
      <td>0 kg m-²</td>
      <td>300 kg m-²</td>
    </tr>
    <tr>
      <td>Senior Homes</td>
      <td>40 kWh m-²</td>
      <td>600 kWh m-²</td>
      <td>0 kg m-²</td>
      <td>300 kg m-²</td>
      <td>0 l m-²</td>
      <td>4000 l m-²</td>
      <td>0 kg m-²</td>
      <td>300 kg m-²</td>
    </tr>
    <tr>
      <td>Residential, Student Housing</td>
      <td>40 kWh m-²</td>
      <td>600 kWh m-²</td>
      <td>0 kg m-²</td>
      <td>300 kg m-²</td>
      <td>0 l m-²</td>
      <td>4000 l m-²</td>
      <td>0 kg m-²</td>
      <td>300 kg m-²</td>
    </tr>
    <tr>
      <td>Hotel</td>
      <td>40 kWh m-²</td>
      <td>800 kWh m-²</td>
      <td>0 kg m-²</td>
      <td>400 kg m-²</td>
      <td>0 l m-²</td>
      <td>5000 l m-²</td>
      <td>0 kg m-²</td>
      <td>300 kg m-²</td>
    </tr>
    <tr>
      <td>Healthcare</td>
      <td>80 kWh m-²</td>
      <td>800 kWh m-²</td>
      <td>0 kg m-²</td>
      <td>400 kg m-²</td>
      <td>0 l m-²</td>
      <td>4000 l m-²</td>
      <td>0 kg m-²</td>
      <td>300 kg m-²</td>
    </tr>
    <tr>
      <td>Medical Office</td>
      <td>20 kWh m-²</td>
      <td>600 kWh m-²</td>
      <td>0 kg m-²</td>
      <td>400 kg m-²</td>
      <td>0 l m-²</td>
      <td>4000 l m-²</td>
      <td>0 kg m-²</td>
      <td>300 kg m-²</td>
    </tr>
    <tr>
      <td>Lodging, Leisure &amp; Recreation</td>
      <td>20 kWh m-²</td>
      <td>600 kWh m-²</td>
      <td>0 kg m-²</td>
      <td>300 kg m-²</td>
      <td>0 l m-²</td>
      <td>4000 l m-²</td>
      <td>0 kg m-²</td>
      <td>300 kg m-²</td>
    </tr>
    <tr>
      <td>Data Centers</td>
      <td>500 kWh m-²</td>
      <td>8000 kWh m-²</td>
      <td>0 kg m-²</td>
      <td>3000 kg m-²</td>
      <td>0 l m-²</td>
      <td>5000 l m-²</td>
      <td>0 kg m-²</td>
      <td>200 kg m-²</td>
    </tr>
    <tr>
      <td>Self-storage</td>
      <td>10 kWh m-²</td>
      <td>400 kWh m-²</td>
      <td>0 kg m-²</td>
      <td>200 kg m-²</td>
      <td>0 l m-²</td>
      <td>3000 l m-²</td>
      <td>0 kg m-²</td>
      <td>200 kg m-²</td>
    </tr>
    <tr>
      <td>Parking (indoors)</td>
      <td>1 kWh m-²</td>
      <td>400 kWh m-²</td>
      <td>0 kg m-²</td>
      <td>200 kg m-²</td>
      <td>0 l m-²</td>
      <td>3000 l m-²</td>
      <td>0 kg m-²</td>
      <td>200 kg m-²</td>
    </tr>
    <tr>
      <td>Other</td>
      <td>10 kWh m-²</td>
      <td>800 kWh m-²</td>
      <td>0 kg m-²</td>
      <td>400 kg m-²</td>
      <td>0 l m-²</td>
      <td>5000 l m-²</td>
      <td>0 kg m-²</td>
      <td>400 kg m-²</td>
    </tr>
    <tr>
      <td>Other2</td>
      <td>10 kWh m-²</td>
      <td>800 kWh m-²</td>
      <td>0 kg m-²</td>
      <td>400 kg m-²</td>
      <td>0 l m-²</td>
      <td>5000 l m-²</td>
      <td>0 kg m-²</td>
      <td>400 kg m-²</td>
    </tr>
  </tbody>
</table>
