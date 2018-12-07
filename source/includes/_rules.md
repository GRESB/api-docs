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

### Energy

#### Base Building + Tenant Space

<pre class="regular-pre">
lower_threshold &le;
  sum(
    en_man_bcf_abs,
    en_man_bcd_abs,
    en_man_bce_abs,
    en_man_bsf_abs,
    en_man_bsd_abs,
    en_man_bse_abs,
    en_man_tlf_abs,
    en_man_tld_abs,
    en_man_tle_abs,
    en_man_ttf_abs,
    en_man_ttd_abs,
    en_man_tte_abs
  ) /
  max(
    sum(
      max(en_man_bcf_cov, en_man_bcd_cov, en_man_bce_cov),
      max(en_man_tlf_cov, en_man_tld_cov, en_man_tle_cov),
      max(en_man_ttf_cov, en_man_ttd_cov, en_man_tte_cov)
    ),
    max(en_man_bsf_cov, en_man_bsd_cov, en_man_bse_cov)
  )

upper_threshold &ge;
  sum(
    en_man_bcf_abs,
    en_man_bcd_abs,
    en_man_bce_abs,
    en_man_bsf_abs,
    en_man_bsd_abs,
    en_man_bse_abs,
    en_man_tlf_abs,
    en_man_tld_abs,
    en_man_tle_abs,
    en_man_ttf_abs,
    en_man_ttd_abs,
    en_man_tte_abs
  ) /
  max(
    sum(
      min(
        sum(en_man_bcf_cov, en_man_bcd_cov, en_man_bce_cov),
        asset_size_common
      ),
      min(
        sum(en_man_tlf_cov, en_man_tld_cov, en_man_tle_cov),
        asset_size_tenant_landlord
      ),
      min(
        sum(en_man_ttf_cov, en_man_ttd_cov, en_man_tte_cov),
        asset_size_tenant_tenant
      )
    ),
    min(
      sum(en_man_bsf_cov, en_man_bsd_cov, en_man_bse_cov),
      asset_size_shared
     )
  )
</pre>

#### Managed Whole Building

<pre class="regular-pre">
lower_threshold &le;
  sum(en_man_wcf_abs, en_man_wcd_abs, en_man_wce_abs)
  /
  max(en_man_wcf_cov, en_man_wcd_cov, en_man_wce_cov)

upper_threshold &ge;
  sum(en_man_wcf_abs, en_man_wcd_abs, en_man_wce_abs)
  /
  min(
    sum(en_man_wcf_abs, en_man_wcd_abs, en_man_wce_abs),
    asset_size_whole
  )
</pre>

#### Indirectly Managed Whole Building

<pre class="regular-pre">
lower_threshold &le;
  sum(en_ind_wwf_abs, en_ind_wwd_abs, en_ind_wwe_abs)
  /
  max(en_ind_wwf_cov, en_ind_wwd_cov, en_ind_wwe_cov)

upper_threshold &ge;
  sum(en_ind_wwf_abs, en_ind_wwd_abs, en_ind_wwe_abs)
  /
  min(
    sum(en_ind_wwf_cov, en_ind_wwd_cov, en_ind_wwe_cov),
    asset_size_whole
  )
</pre>

### GHG

<pre class="regular-pre">
lower_threshold &le;
  sum(ghg_s1_abs, ghg_s2_abs)
  /
  sum(ghg_s1_cov, ghg_s2_cov)

upper_threshold &ge;
  sum(ghg_s1_abs, ghg_s2_abs)
  /
  min(
    sum(ghg_s1_abs, ghg_s2_abs),
    asset_size
  )
</pre>

### Water

#### Base Building + Tenant Space

<pre class="regular-pre">
lower_threshold &le;
  sum(wat_man_bc_abs, wat_man_bs_abs, wat_man_tl_abs, wat_man_tt_abs)
  /
  sum(wat_man_bc_cov, wat_man_bs_cov, wat_man_tl_cov, wat_man_tt_cov)

upper_threshold &ge;
  sum(wat_man_bc_abs, wat_man_bs_abs, wat_man_tl_abs, wat_man_tt_abs)
  /
  min(
    sum(wat_man_bc_cov, wat_man_bs_cov, wat_man_tl_cov, wat_man_tt_cov),
    asset_size
  )
</pre>

#### Managed Whole Building

<pre class="regular-pre">
lower_threshold &le;
  wat_man_wc_abs / wat_man_wc_cov
&ge; upper_threshold
</pre>

#### Indirectly Managed Whole Building

<pre class="regular-pre">
lower_threshold &le;
  wat_ind_ww_abs / wat_ind_ww_cov
&ge; upper_threshold
</pre>

### Waste

#### Managed Assets

<pre class="regular-pre">
lower_threshold &le;
  sum(was_man_haz_abs, was_man_nhaz_abs)
  /
  (was_man_perc / 100) * asset_size)
&ge; upper_threshold
</pre>

#### Indirectly Managed Assets

<pre class="regular-pre">
lower_threshold &le;
  sum(was_ind_haz_abs, was_ind_nhaz_abs)
  /
  (was_ind_perc / 100) * asset_size)
&ge; upper_threshold
</pre>

