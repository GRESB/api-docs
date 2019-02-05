# Treshold Values
Threshold values are calculated for each `property_type` and performance indicator based on historical data. This sets a range w- if a data point is outside of the range it is flagged as an outlier. A flagged outlier needs to be explained in order to submit your data in the GRESB Real Estate Assessment. To prevent lots of error messages, we intend to share these threshold values in order to resolve outliers beforehand or construct a valid argument as to why the data point is an outlier.

For example, energy consumption is reported in PI1.1 for the sections Base Building + Tenant Space, Managed Whole Building, Indirectly Managed Whole Building, or a combination of them. The lower threshold is compared against the sum of all consumptions divided by the sum of all possible overlapping coverage areas for each section. For the upper threshold all possible overlapping coverage areas are capped at the area given in the pre-table (PI1.0). This methodology is only used for this specific purpose and do not reflect the intensities given in the results, which are calculated in a different manner. As a result, solely energy can result in a total of 20 (property types) * 3 (groups) = 60 outlier error messages which need to be explained. These explanations are given in the Performance Indicator Overview per property type. Please use the threshold values given below to verify your data before filling in the performance indicator section to guarantee the data quality and save time during your submission.

For implementing the outlier validation GRESB provides the following formulas:

## Energy

### Base Building + Tenant Space

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

### Managed Whole Building

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

### Indirectly Managed Whole Building

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

## GHG

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

## Water

### Base Building + Tenant Space

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

### Managed Whole Building

<pre class="regular-pre">
lower_threshold &le;
  wat_man_wc_abs / wat_man_wc_cov
&ge; upper_threshold
</pre>

### Indirectly Managed Whole Building

<pre class="regular-pre">
lower_threshold &le;
  wat_ind_ww_abs / wat_ind_ww_cov
&ge; upper_threshold
</pre>

## Waste

### Managed Assets

<pre class="regular-pre">
lower_threshold &le;
  sum(was_man_haz_abs, was_man_nhaz_abs)
  /
  (was_man_perc / 100) * asset_size)
&ge; upper_threshold
</pre>

### Indirectly Managed Assets

<pre class="regular-pre">
lower_threshold &le;
  sum(was_ind_haz_abs, was_ind_nhaz_abs)
  /
  (was_ind_perc / 100) * asset_size)
&ge; upper_threshold
</pre>

