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
Threshold values are calculated for each `property_type` and performance indicator based on historical data. This sets a range with a lower and upper threshold in which each data point is verified. If a data point is outside of the range it is flagged as an outlier. A flagged outlier needs to be explained in order to submit your data in the GRESB Real Estate Assessment. To prevent lots of error messages, we intend to share these threshold values in order to resolve outliers beforehand or construct a valid argument as to why the data point is an outlier.

For example, energy consumption is reported in PI1.1 for the sections Base Building + Tenant Space, Managed Whole Building, Indirectly Managed Whole Building, or a combination of them. The lower threshold is compared against the sum of all consumptions divided by the sum of all possible overlapping coverage areas for each section. For the upper threshold all possible overlapping coverage areas are capped at the area given in the pre-table (PI1.0). This methodology is only used for this specific purpose and do not reflect the intensities given in the results, which are calculated in a different manner. As a result, solely energy can result in a total of 20 (property types) * 3 (groups) = 60 outlier error messages which need to be explained. These explanations are given in the Performance Indicator Overview per property type. Please use the threshold values given below to verify your data before filling in the performance indicator section to guarantee the data quality and save time during your submission.

For implementing the outlier validation GRESB provides the following formulas:

**Energy**

_Base Building + Tenant Space_

`lower_threshold` &le;
&nbsp;&nbsp;`sum(`
&nbsp;&nbsp;&nbsp;&nbsp;`en_man_bcf_abs,`
&nbsp;&nbsp;&nbsp;&nbsp;`en_man_bcd_abs,`
&nbsp;&nbsp;&nbsp;&nbsp;`en_man_bce_abs,`
&nbsp;&nbsp;&nbsp;&nbsp;`en_man_bsf_abs,`
&nbsp;&nbsp;&nbsp;&nbsp;`en_man_bsd_abs,`
&nbsp;&nbsp;&nbsp;&nbsp;`en_man_bse_abs,`
&nbsp;&nbsp;&nbsp;&nbsp;`en_man_tlf_abs,`
&nbsp;&nbsp;&nbsp;&nbsp;`en_man_tld_abs,`
&nbsp;&nbsp;&nbsp;&nbsp;`en_man_tle_abs,`
&nbsp;&nbsp;&nbsp;&nbsp;`en_man_ttf_abs,`
&nbsp;&nbsp;&nbsp;&nbsp;`en_man_ttd_abs,`
&nbsp;&nbsp;&nbsp;&nbsp;`en_man_tte_abs`
&nbsp;&nbsp;`) / `
&nbsp;&nbsp;`max(`
&nbsp;&nbsp;&nbsp;&nbsp;`sum(`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`max(en_man_bcf_cov, en_man_bcd_cov, en_man_bce_cov),`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`max(en_man_tlf_cov, en_man_tld_cov, en_man_tle_cov),`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`max(en_man_ttf_cov, en_man_ttd_cov, en_man_tte_cov)`
&nbsp;&nbsp;&nbsp;&nbsp;`)`,
&nbsp;&nbsp;&nbsp;&nbsp;`max(en_man_bsf_cov, en_man_bsd_cov, en_man_bse_cov)`
&nbsp;&nbsp;`)`

`upper_threshold` &ge;
&nbsp;&nbsp;`sum(`
&nbsp;&nbsp;&nbsp;&nbsp;`en_man_bcf_abs,`
&nbsp;&nbsp;&nbsp;&nbsp;`en_man_bcd_abs,`
&nbsp;&nbsp;&nbsp;&nbsp;`en_man_bce_abs,`
&nbsp;&nbsp;&nbsp;&nbsp;`en_man_bsf_abs,`
&nbsp;&nbsp;&nbsp;&nbsp;`en_man_bsd_abs,`
&nbsp;&nbsp;&nbsp;&nbsp;`en_man_bse_abs,`
&nbsp;&nbsp;&nbsp;&nbsp;`en_man_tlf_abs,`
&nbsp;&nbsp;&nbsp;&nbsp;`en_man_tld_abs,`
&nbsp;&nbsp;&nbsp;&nbsp;`en_man_tle_abs,`
&nbsp;&nbsp;&nbsp;&nbsp;`en_man_ttf_abs,`
&nbsp;&nbsp;&nbsp;&nbsp;`en_man_ttd_abs,`
&nbsp;&nbsp;&nbsp;&nbsp;`en_man_tte_abs`
&nbsp;&nbsp;`) /`
&nbsp;&nbsp;`max(`
&nbsp;&nbsp;&nbsp;&nbsp;`sum(`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`min(`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`sum(en_man_bcf_cov, en_man_bcd_cov, en_man_bce_cov),`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`asset_size_common`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`),`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`min(`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`sum(en_man_tlf_cov, en_man_tld_cov, en_man_tle_cov),`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`asset_size_tenant_landlord`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`),`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`min(`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`sum(en_man_ttf_cov, en_man_ttd_cov, en_man_tte_cov),`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`asset_size_tenant_tenant`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`)`
&nbsp;&nbsp;&nbsp;&nbsp;`),`
&nbsp;&nbsp;&nbsp;&nbsp;`min(`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`sum(en_man_bsf_cov, en_man_bsd_cov, en_man_bse_cov),`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`asset_size_shared`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`)`
&nbsp;&nbsp;`)`

_Managed Whole Building_

`lower_threshold` &le; 
&nbsp;&nbsp;`sum(en_man_wcf_abs, en_man_wcd_abs, en_man_wce_abs)`
&nbsp;&nbsp;`/`
&nbsp;&nbsp;`max(en_man_wcf_cov, en_man_wcd_cov, en_man_wce_cov)`

`upper_threshold` &ge; 
&nbsp;&nbsp;`sum(en_man_wcf_abs, en_man_wcd_abs, en_man_wce_abs)`
&nbsp;&nbsp;`/`
&nbsp;&nbsp;`min(`
&nbsp;&nbsp;&nbsp;&nbsp;`sum(en_man_wcf_abs, en_man_wcd_abs, en_man_wce_abs),`
&nbsp;&nbsp;&nbsp;&nbsp;`asset_size_whole`
&nbsp;&nbsp;`)`

_Indirectly Managed Whole Building_

`lower_threshold` &le; 
&nbsp;&nbsp;`sum(en_ind_wwf_abs, en_ind_wwd_abs, en_ind_wwe_abs)`
&nbsp;&nbsp;`/`
&nbsp;&nbsp;`max(en_ind_wwf_cov, en_ind_wwd_cov, en_ind_wwe_cov)`

`upper_threshold` &ge; 
&nbsp;&nbsp;`sum(en_ind_wwf_abs, en_ind_wwd_abs, en_ind_wwe_abs)`
&nbsp;&nbsp;`/`
&nbsp;&nbsp;`min(`
&nbsp;&nbsp;&nbsp;&nbsp;`sum(en_ind_wwf_cov, en_ind_wwd_cov, en_ind_wwe_cov),`
&nbsp;&nbsp;&nbsp;&nbsp;`asset_size_whole`
&nbsp;&nbsp;`)`

**GHG**

`lower_threshold` &le; 
&nbsp;&nbsp;`sum(ghg_s1_abs, ghg_s2_abs)`
&nbsp;&nbsp;`/`
&nbsp;&nbsp;`sum(ghg_s1_cov, ghg_s2_cov)`

`upper_threshold` &ge; 
&nbsp;&nbsp;`sum(ghg_s1_abs, ghg_s2_abs)`
&nbsp;&nbsp;`/`
&nbsp;&nbsp;`min(`
&nbsp;&nbsp;&nbsp;&nbsp;`sum(ghg_s1_abs, ghg_s2_abs),`
&nbsp;&nbsp;&nbsp;&nbsp;`asset_size`
&nbsp;&nbsp;`)`

**Water**

_Base Building + Tenant Space_

`lower_threshold` &le; 
&nbsp;&nbsp;`sum(wat_man_bc_abs, wat_man_bs_abs, wat_man_tl_abs, wat_man_tt_abs)`
&nbsp;&nbsp;`/`
&nbsp;&nbsp;`sum(wat_man_bc_cov, wat_man_bs_cov, wat_man_tl_cov, wat_man_tt_cov)`

`upper_threshold` &ge; 
&nbsp;&nbsp;`sum(wat_man_bc_abs, wat_man_bs_abs, wat_man_tl_abs, wat_man_tt_abs)`
&nbsp;&nbsp;`/`
&nbsp;&nbsp;`min(`
&nbsp;&nbsp;&nbsp;&nbsp;`sum(wat_man_bc_cov, wat_man_bs_cov, wat_man_tl_cov, wat_man_tt_cov),`
&nbsp;&nbsp;&nbsp;&nbsp;`asset_size`
&nbsp;&nbsp;`)`

_Managed Whole Building_

`lower_threshold` &le; 
&nbsp;&nbsp;`wat_man_wc_abs / wat_man_wc_cov`
&ge; `upper_threshold`

_Indirectly Managed Whole Building_

`lower_threshold` &le;
&nbsp;&nbsp;`wat_ind_ww_abs / wat_ind_ww_cov`
&ge; `upper_threshold`

**Waste**

_Managed Assets_

`lower_threshold` &le; 
&nbsp;&nbsp;`sum(was_man_haz_abs, was_man_nhaz_abs)`
&nbsp;&nbsp;`/`
&nbsp;&nbsp;`(was_man_perc / 100) * asset_size)`
&ge; `upper_threshold`

_Indirectly Managed Assets_

`lower_threshold` &le; 
&nbsp;&nbsp;`sum(was_ind_haz_abs, was_ind_nhaz_abs)`
&nbsp;&nbsp;`/`
&nbsp;&nbsp;`(was_ind_perc / 100) * asset_size)`
&ge; `upper_threshold`

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
      <td>40 kWh/m²</td>
      <td>800 kWh/m²</td>
      <td>0 kg/m²</td>
      <td>400 kg/m²</td>
      <td>0 l/m²</td>
      <td>5000 l/m²</td>
      <td>0 kg/m²</td>
      <td>400 kg/m²</td>
    </tr>
    <tr>
      <td>Retail, Shopping Center</td>
      <td>40 kWh/m²</td>
      <td>800 kWh/m²</td>
      <td>0 kg/m²</td>
      <td>400 kg/m²</td>
      <td>0 l/m²</td>
      <td>5000 l/m²</td>
      <td>0 kg/m²</td>
      <td>400 kg/m²</td>
    </tr>
    <tr>
      <td>Retail, Warehouse</td>
      <td>10 kWh/m²</td>
      <td>400 kWh/m²</td>
      <td>0 kg/m²</td>
      <td>300 kg/m²</td>
      <td>0 l/m²</td>
      <td>3000 l/m²</td>
      <td>0 kg/m²</td>
      <td>400 kg/m²</td>
    </tr>
    <tr>
      <td>Office</td>
      <td>80 kWh/m²</td>
      <td>600 kWh/m²</td>
      <td>0 kg/m²</td>
      <td>400 kg/m²</td>
      <td>0 l/m²</td>
      <td>4000 l/m²</td>
      <td>0 kg/m²</td>
      <td>300 kg/m²</td>
    </tr>
    <tr>
      <td>Industrial, Distribution Warehouse</td>
      <td>10 kWh/m²</td>
      <td>400 kWh/m²</td>
      <td>0 kg/m²</td>
      <td>200 kg/m²</td>
      <td>0 l/m²</td>
      <td>2000 l/m²</td>
      <td>0 kg/m²</td>
      <td>200 kg/m²</td>
    </tr>
    <tr>
      <td>Industrial, Business Parks</td>
      <td>1 kWh/m²</td>
      <td>400 kWh/m²</td>
      <td>0 kg/m²</td>
      <td>200 kg/m²</td>
      <td>0 l/m²</td>
      <td>2000 l/m²</td>
      <td>0 kg/m²</td>
      <td>200 kg/m²</td>
    </tr>
    <tr>
      <td>Industrial, Manufacturing</td>
      <td>10 kWh/m²</td>
      <td>400 kWh/m²</td>
      <td>0 kg/m²</td>
      <td>300 kg/m²</td>
      <td>0 l/m²</td>
      <td>3000 l/m²</td>
      <td>0 kg/m²</td>
      <td>400 kg/m²</td>
    </tr>
    <tr>
      <td>Residential, Multifamily</td>
      <td>40 kWh/m²</td>
      <td>600 kWh/m²</td>
      <td>0 kg/m²</td>
      <td>300 kg/m²</td>
      <td>0 l/m²</td>
      <td>4000 l/m²</td>
      <td>0 kg/m²</td>
      <td>300 kg/m²</td>
    </tr>
    <tr>
      <td>Residential, Family Homes</td>
      <td>40 kWh/m²</td>
      <td>600 kWh/m²</td>
      <td>0 kg/m²</td>
      <td>300 kg/m²</td>
      <td>0 l/m²</td>
      <td>4000 l/m²</td>
      <td>0 kg/m²</td>
      <td>300 kg/m²</td>
    </tr>
    <tr>
      <td>Senior Homes</td>
      <td>40 kWh/m²</td>
      <td>600 kWh/m²</td>
      <td>0 kg/m²</td>
      <td>300 kg/m²</td>
      <td>0 l/m²</td>
      <td>4000 l/m²</td>
      <td>0 kg/m²</td>
      <td>300 kg/m²</td>
    </tr>
    <tr>
      <td>Residential, Student Housing</td>
      <td>40 kWh/m²</td>
      <td>600 kWh/m²</td>
      <td>0 kg/m²</td>
      <td>300 kg/m²</td>
      <td>0 l/m²</td>
      <td>4000 l/m²</td>
      <td>0 kg/m²</td>
      <td>300 kg/m²</td>
    </tr>
    <tr>
      <td>Hotel</td>
      <td>40 kWh/m²</td>
      <td>800 kWh/m²</td>
      <td>0 kg/m²</td>
      <td>400 kg/m²</td>
      <td>0 l/m²</td>
      <td>5000 l/m²</td>
      <td>0 kg/m²</td>
      <td>300 kg/m²</td>
    </tr>
    <tr>
      <td>Healthcare</td>
      <td>80 kWh/m²</td>
      <td>800 kWh/m²</td>
      <td>0 kg/m²</td>
      <td>400 kg/m²</td>
      <td>0 l/m²</td>
      <td>4000 l/m²</td>
      <td>0 kg/m²</td>
      <td>300 kg/m²</td>
    </tr>
    <tr>
      <td>Medical Office</td>
      <td>20 kWh/m²</td>
      <td>600 kWh/m²</td>
      <td>0 kg/m²</td>
      <td>400 kg/m²</td>
      <td>0 l/m²</td>
      <td>4000 l/m²</td>
      <td>0 kg/m²</td>
      <td>300 kg/m²</td>
    </tr>
    <tr>
      <td>Lodging, Leisure &amp; Recreation</td>
      <td>20 kWh/m²</td>
      <td>600 kWh/m²</td>
      <td>0 kg/m²</td>
      <td>300 kg/m²</td>
      <td>0 l/m²</td>
      <td>4000 l/m²</td>
      <td>0 kg/m²</td>
      <td>300 kg/m²</td>
    </tr>
    <tr>
      <td>Data Centers</td>
      <td>500 kWh/m²</td>
      <td>8000 kWh/m²</td>
      <td>0 kg/m²</td>
      <td>3000 kg/m²</td>
      <td>0 l/m²</td>
      <td>5000 l/m²</td>
      <td>0 kg/m²</td>
      <td>200 kg/m²</td>
    </tr>
    <tr>
      <td>Selfstorage</td>
      <td>10 kWh/m²</td>
      <td>400 kWh/m²</td>
      <td>0 kg/m²</td>
      <td>200 kg/m²</td>
      <td>0 l/m²</td>
      <td>3000 l/m²</td>
      <td>0 kg/m²</td>
      <td>200 kg/m²</td>
    </tr>
    <tr>
      <td>Parking (indoors)</td>
      <td>1 kWh/m²</td>
      <td>400 kWh/m²</td>
      <td>0 kg/m²</td>
      <td>200 kg/m²</td>
      <td>0 l/m²</td>
      <td>3000 l/m²</td>
      <td>0 kg/m²</td>
      <td>200 kg/m²</td>
    </tr>
    <tr>
      <td>Other</td>
      <td>10 kWh/m²</td>
      <td>800 kWh/m²</td>
      <td>0 kg/m²</td>
      <td>400 kg/m²</td>
      <td>0 l/m²</td>
      <td>5000 l/m²</td>
      <td>0 kg/m²</td>
      <td>400 kg/m²</td>
    </tr>
    <tr>
      <td>Other2</td>
      <td>10 kWh/m²</td>
      <td>800 kWh/m²</td>
      <td>0 kg/m²</td>
      <td>400 kg/m²</td>
      <td>0 l/m²</td>
      <td>5000 l/m²</td>
      <td>0 kg/m²</td>
      <td>400 kg/m²</td>
    </tr>
  </tbody>
</table>
