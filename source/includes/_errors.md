# Errors & Warnings

When a resource fails validation it will contain an `errors` key containing an object showing details for each attribute. Each attribute with an error will have a key, an object, and an array of errors.
Since we don't know the language you present to your users we normally return the error details in natural language, as such there is no need to translate the errors for your user.

## Regular Expression Logic

**Prefixes**:

* `^en_` - energy
* `^ghg_` - ghg
* `^wat_` - water
* `^was_` - waste

**General**:

* `_man_` - directly managed
* `_ind_` - indirectly managed
* `_abs$` - absolute consumption
* `_cov$` - absolute coverage
* `_tot$` - maximum coverage

**Energy**:

For example `en_man_bcf_abs`.

* `_bc` - base building; common areas
* `_bs` - base building; shared services
* `_bo` - base building; directly managed outdoor areas
* `_tl` - tenant space; purchased by the landlord
* `_tt` - tenant space; purchased by the tenant
* `_wc` - whole building; directly managed
* `_ww` - whole building; indirectly managed
* `_wo` - whole building; indirectly managed outdoor areas

These expression are followed by the different energy types.

* `f_` - fuel
* `d_` - district heating & cooling
* `e_` - electricity


**GHG**:

For example `ghg_s1_abs`.

* `_s1_` - scope 1 emission
* `_s2_` - scope 2 emission
* `_s3_` - scope 3 emission
* `_o_` - emission of outdoor areas

**Water**:

For example `wat_man_bc_abs`.

* `_bc_` - base building; common areas
* `_bs_` - base building; shared services
* `_bo_` - base building; directly managed outdoor areas
* `_tl_` - tenant space; purchased by the landlord
* `_tt_` - tenant space; purchased by the tenant
* `_wc_` - whole building; directly managed
* `_ww_` - whole building; indirectly managed
* `_wo_` - whole building; indirectly managed outdoor areas

**Waste**:

For example `was_man_haz_abs` or `was_dwe_perc`.

* `_haz_` - hazardous
* `_nhaz_` - non-hazardous
* `_perc$` - pecentage disposed via...

The disposal routes.

* `_l_` - landfill
* `_i_` - incineration
* `_wd_` - total percentage diverted from landfill, incineration, or other
* `_dwe_` - diverted; waste to energy
* `_dr_` - diverted; recycling
* `_do_` - diverted; other
* `_oth_` - other

## Error Messages

Fields are grouped per error message(s). The suffixes `_cy` and `_ly` stand for the year 2018 and 2017, respectively.

---
**"can't be blank"**

* `property_type_code`
* `asset_(name|size|own)`
* `directly_managed`
* `whole_building` 
* `new_construction_(cl)y`
* `major_renovation_(cl)y`
* `dc_change_(energy|water)`

---
**"must be chosen from list"**

* `property_type_code`

---
**"must be greater than 0"**

* `asset_gav`
* `asset_size`
* `asset_size_(common|shared|tenant$|tenant_landlord|tenant_tenant)` 
* `en_(man|ind)_(bc|bs|tl|tt|wc|ww)[fde]_tot`
* `ghg_s[123]_tot`
* `wat_(man|ind)_(bc|bs|tl|tt|wc|ww)_tot`

---
**"must be greater than or equal to 0"**

**"must be less than or equal to 12"**

* `asset_own`

---
**"must be between 0% and 100%"**

* `asset_vacancy_cy`
* `was_(man|ind|l|i|dwe|dr|do|oth)_perc_[cl]y`

---
**"must be true when asset is indirectly managed"**

* `whole_building`

---
**"can't be blank when new construction is true this year"**

* `new_construction_completed`

---
**"can't be blank when major renovation is true this year"**

* `major_renovation_completed`

---
**"must be greater than or equal to 0"**

* `asset_size_tenant_(landlord|tenant)`

---
**"must be equal to asset_size"**

* `asset_size_(common|tenant)`

---
**"can't be blank when not reporting on whole building"**

* `asset_size_(common|tenant$)`

---
**"must be less than or equal to %{count} (the current asset_size)"**

* `asset_size_shared`

---
**"must be less than or equal to %{count} (the current asset_size_tenant)"**

**"can't be blank when asset_size_tenant is present"**

* `asset_size_tenant_(landlord|tenant)`

---
**"can't be blank when en_man_bcf_cov_cy and asset_size_common are larger than 0"**
    
* `en_man_bcf_abs_cy`

---
**"can't be blank when en_man_bcf_tot_cy is present and larger than 0"**

**"must be less than or equal to %{count} (maximum coverage en_man_bcf_tot_cy)"**

**"can't be blank when en_man_bcf_abs_cy and asset_size_common are larger than 0"**

* `en_man_bcf_cov_cy`

---
**"can't be blank when en_man_bcf_cov_cy is present"**

* `en_man_bcf_tot_cy`

---
**"must be less than or equal to %{count} (the current asset_size_common)"**

**"sum must be greater than or equal to asset_size_common"**

* `en_man_bc[fde]_tot_cy`

---
**"can't be blank when en_man_bcd_cov_cy and asset_size_common are larger than 0"**

* `en_man_bcd_abs_cy`

---
**"can't be blank when en_man_bcd_tot_cy is present and larger than 0"**

**"must be less than or equal to %{count} (maximum coverage en_man_bcd_tot_cy)"**

**"can't be blank when en_man_bcd_abs_cy and asset_size_common are larger than 0"**

* `en_man_bcd_cov_cy` 

---
**"can't be blank when en_man_bcd_cov_cy is present"**

* `en_man_bcd_tot_cy`

---
**"can't be blank when en_man_bce_cov_cy and asset_size_common are larger than 0"**

* `en_man_bce_abs_cy`

---
**"can't be blank when en_man_bce_tot_cy is present and larger than 0"**

**"must be less than or equal to %{count} (maximum coverage en_man_bce_tot_cy)"**

**"can't be blank when en_man_bce_abs_cy and asset_size_common are larger than 0"**

* `en_man_bce_cov_cy`

---
**"can't be blank when en_man_bce_cov_cy is present"**

* `en_man_bce_tot_cy`

---
**"can't be blank when en_man_bsf_cov_cy and asset_size_shared are larger than 0"**

* `en_man_bsf_abs_cy`

---
**"can't be blank when en_man_bsf_tot_cy is present and larger than 0"**

**"must be less than or equal to %{count} (maximum coverage en_man_bsf_tot_cy)"**

**"can't be blank when en_man_bsf_abs_cy and asset_size_shared are larger than 0"**

* `en_man_bsf_cov_cy`

---
**"can't be blank when en_man_bsf_cov_cy is present"**

* `en_man_bsf_tot_cy`

---
**"must be less than or equal to %{count} (the current asset_size_shared)"**

**"sum must be greater than or equal to asset_size_shared"**

* `en_man_bs[fde]_tot_cy`

---
**"can't be blank when en_man_bsd_cov_cy and asset_size_shared are larger than 0"**

* `en_man_bsd_abs_cy`

---
**"can't be blank when en_man_bsd_tot_cy is present and larger than 0"**

**"must be less than or equal to %{count} (maximum coverage en_man_bsd_tot_cy)"**

**"can't be blank when en_man_bsd_abs_cy and asset_size_shared are larger than 0"**

* `en_man_bsd_cov_cy`

---
**"can't be blank when en_man_bsd_cov_cy is present"**

* `en_man_bsd_tot_cy`

---
**"can't be blank when en_man_bse_cov_cy and asset_size_shared are larger than 0"**

* `en_man_bse_abs_cy`

---
**"can't be blank when en_man_bse_tot_cy is present and larger than 0"**

**"must be less than or equal to %{count} (maximum coverage en_man_bse_tot_cy)"**

**"can't be blank when en_man_bse_abs_cy and asset_size_shared are larger than 0"**

* `en_man_bse_cov_cy`

---
**"can't be blank when en_man_bse_cov_cy is present"**

* `en_man_bse_tot_cy`

---
**"can't be blank when en_man_tlf_cov_cy and asset_size_tenant_landlord are larger than 0"**

* `en_man_tlf_abs_cy`

---
**"can't be blank when en_man_tlf_tot_cy is present and larger than 0"**

**"must be less than or equal to %{count} (maximum coverage en_man_tlf_tot_cy)"**

**"can't be blank when en_man_tlf_abs_cy and asset_size_tenant_landlord are larger than 0"**

* `en_man_tlf_cov_cy`

---
**"can't be blank when en_man_tlf_cov_cy is present"**

* `en_man_tlf_tot_cy`

---
**"must be less than or equal to %{count} (the current asset_size_tenant_landlord)"**

**"sum must be greater than or equal to asset_size_tenant_landlord"**

* `en_man_tl[fde]_tot_cy`

---
**"can't be blank when en_man_tld_cov_cy and asset_size_tenant_landlord are larger than 0"**

* `en_man_tld_abs_cy`

---
**"can't be blank when en_man_tld_tot_cy is present and larger than 0"**

**"must be less than or equal to %{count} (maximum coverage en_man_tld_tot_cy)"**

**"can't be blank when en_man_tld_abs_cy and asset_size_tenant_landlord are larger than 0"**

* `en_man_tld_cov_cy`

---
**"can't be blank when en_man_tld_cov_cy is present"**

* `en_man_tld_tot_cy`

---
**"can't be blank when en_man_tle_cov_cy and asset_size_tenant_landlord are larger than 0"**

* `en_man_tle_abs_cy`

---
**"can't be blank when en_man_tle_tot_cy is present and larger than 0"**

**"must be less than or equal to %{count} (maximum coverage en_man_tle_tot_cy)"**

**"can't be blank when en_man_tle_abs_cy and asset_size_tenant_landlord are larger than 0"**

* `en_man_tle_cov_cy`

---
**"can't be blank when en_man_tle_cov_cy is present"**

* `en_man_tle_tot_cy`

---
**"can't be blank when en_man_ttf_cov_cy and asset_size_tenant_tenant are larger than 0"**

* `en_man_ttf_abs_cy`

---
**"can't be blank when en_man_ttf_tot_cy is present and larger than 0"**

**"must be less than or equal to %{count} (maximum coverage en_man_ttf_tot_cy)"**

**"can't be blank when en_man_ttf_abs_cy and asset_size_tenant_tenant are larger than 0"**

* `en_man_ttf_cov_cy`

---
**"can't be blank when en_man_ttf_cov_cy is present"**

* `en_man_ttf_tot_cy`

---
**"must be less than or equal to %{count} (the current asset_size_tenant_tenant)"**

**"sum must be greater than or equal to asset_size_tenant_tenant"**

* `en_man_tt[fde]_tot_cy`

---
**"can't be blank when en_man_ttd_cov_cy and asset_size_tenant_tenant are larger than 0"**

* `en_man_ttd_abs_cy`

---
**"can't be blank when en_man_ttd_tot_cy is present and larger than 0"**

**"must be less than or equal to %{count} (maximum coverage en_man_ttd_tot_cy)"**

**"can't be blank when en_man_ttd_abs_cy and asset_size_tenant_tenant are larger than 0"**

* `en_man_ttd_cov_cy`

---
**"can't be blank when en_man_ttd_cov_cy is present"**

* `en_man_ttd_tot_cy`

---
**"can't be blank when en_man_tte_cov_cy and asset_size_tenant_tenant are larger than 0"**

* `en_man_tte_abs_cy`

---
**"can't be blank when en_man_tte_tot_cy is present and larger than 0"**

**"must be less than or equal to %{count} (maximum coverage en_man_tte_tot_cy)"**

**"can't be blank when en_man_tte_abs_cy and asset_size_tenant_tenant are larger than 0"**

* `en_man_tte_cov_cy`

---
**"can't be blank when en_man_tte_cov_cy is present**

* `en_man_tte_tot_cy`

---
**"can't be blank when en_man_wcf_cov_cy is larger than 0"**

* `en_man_wcf_abs_cy`

---
**"can't be blank when en_man_wcf_tot_cy is present and larger than 0"**

**"must be less than or equal to %{count} (maximum coverage en_man_wcf_tot_cy)"**

**"can't be blank when en_man_wcf_abs_cy is larger than 0"**

* `en_man_wcf_cov_cy`

---
**"must be less than or equal to %{count} (the current asset_size)"**

* `en_man_wcf_tot_cy`

---
**"must be less than or equal to %{count} (the current asset_size)"**

**"sum must be greater than or equal to asset_size"**

* `en_man_wc[fde]_tot_cy`

---
**"can't be blank when en_man_wcd_cov_cy is larger than 0"**

* `en_man_wcd_abs_cy`

---
**"can't be blank when en_man_wcd_tot_cy is present and larger than 0"**

**"must be less than or equal to %{count} (maximum coverage en_man_wcd_tot_cy)**

**"can't be blank when en_man_wcd_abs_cy is larger than 0"**

* `en_man_wcd_cov_cy`

---
**"can't be blank when en_man_wcd_cov_cy is present"**

* `en_man_wcd_tot_cy`

---
**"can't be blank when en_man_wce_cov_cy is larger than 0"**

* `en_man_wce_abs_cy`

---
**"can't be blank when en_man_wce_tot_cy is present and larger than 0"**

**"must be less than or equal to %{count} (maximum coverage en_man_wce_tot_cy)"**

**"can't be blank when en_man_wce_abs_cy is larger than 0"**

* `en_man_wce_cov_cy`

---
**"can't be blank when en_man_wce_cov_cy is present"**

* `en_man_wce_tot_cy`

---
**"can't be blank when en_ind_wwf_cov_cy is larger than 0"**

* `en_ind_wwf_abs_cy`

---
**"can't be blank when en_ind_wwf_tot_cy is present and larger than 0"**

**"must be less than or equal to %{count} (maximum coverage en_ind_wwf_tot_cy)"**

**"can't be blank when en_ind_wwf_abs_cy is larger than 0"**

* `en_ind_wwf_cov_cy`

---
**"can't be blank when en_ind_wwf_cov_cy is present"**

* `en_ind_wwf_tot_cy`

---
**"must be less than or equal to %{count} (the current asset_size)"**

**"sum must be greater than or equal to asset_size"**

* `en_ind_ww[fde]_tot_cy`

---
**"can't be blank when en_ind_wwd_cov_cy is larger than 0"**

* `en_ind_wwd_abs_cy`

---
**"can't be blank when en_ind_wwd_tot_cy is present and larger than 0"**

**"must be less than or equal to %{count} (maximum coverage en_ind_wwd_tot_cy)"**

**"can't be blank when en_ind_wwd_abs_cy is larger than 0"**

* `en_ind_wwd_cov_cy`

---
**"can't be blank when en_ind_wwd_cov_cy is present**

* `en_ind_wwd_tot_cy`

---
**"can't be blank when en_ind_wwe_cov_cy is larger than 0"**

* `en_ind_wwe_abs_cy`

---
**"can't be blank when en_ind_wwe_tot_cy is present and larger than 0"**

**"must be less than or equal to %{count} (maximum coverage en_ind_wwe_tot_cy)"**

**"can't be blank when en_ind_wwe_abs_cy is larger than 0"**

* `en_ind_wwe_cov_cy`

---
**"can't be blank when en_ind_wwe_cov_cy is present"**

* `en_ind_wwe_tot_cy`

---
**"can't be blank when ghg_s1_cov_cy is present and larger than 0"**

* `ghg_s1_abs_cy`

---
**"must be less than or equal to %{count} (maximum coverage ghg_s1_tot_cy)"**

**"can't be blank when ghg_s1_abs_cy is larger than zero"**

**"can't be blank when ghg_s1_tot_cy is present and larger than 0"**

* `ghg_s1_cov_cy`

---
**"can't be blank when ghg_s1_cov_cy is present"**

* `ghg_s1_tot_cy`

---
**"must be less than or equal to %{count} (the current asset_size)"**

* `ghg_s[123]_tot_cy`

---
**"can't be blank when ghg_s2_cov_cy is present and larger than 0"**

* `ghg_s2_abs_cy`

---
**"can't be blank when ghg_s2_tot_cy is present and larger than 0"**

**"must be less than or equal to %{count} (maximum coverage ghg_s2_tot_cy)"**

**"can't be blank when ghg_s2_abs_cy is larger than zero"**

* `ghg_s2_cov_cy`

---
**"can't be blank when ghg_s2_cov_cy is present"**

* `ghg_s2_tot_cy`

---
**"can't be blank when ghg_s3_cov_cy is present and larger than 0"**

* `ghg_s3_abs_cy`

---
**"can't be blank when ghg_s3_tot_cy is present and larger than 0"**

**"must be less than or equal to %{count} (maximum coverage ghg_s3_tot_cy)"**

**"can't be blank when ghg_s3_abs_cy is larger than zero"**

* `ghg_s3_cov_cy`

---
**"can't be blank when ghg_s3_cov_cy is present"**

* `ghg_s3_tot_cy`

---
**"can't be blank when wat_man_bc_cov_cy is present and larger than 0"**

* `wat_man_bc_abs_cy`

---
**"can't be blank when wat_man_bc_tot_cy is present and larger than 0"**

**"must be less than or equal to %{count} (maximum coverage wat_man_bc_tot_cy)"**

**"can't be blank when wat_man_bc_abs_cy is larger than zero"**

* `wat_man_bc_cov_cy`

---
**"can't be blank when wat_man_bc_cov_cy is present"**

* `wat_man_bc_tot_cy`

---
**"must be less than or equal to %{count} (the current asset_size)"**

* `wat_man_(bc|bs|tl|tt|wc)_tot_cy`

---
**"can't be blank when wat_man_bs_cov_cy is present and larger than 0"**

* `wat_man_bs_abs_cy`

---
**"can't be blank when wat_man_bs_tot_cy is present and larger than 0"**

**"must be less than or equal to %{count} (maximum coverage wat_man_bs_tot_cy)"**

**"can't be blank when wat_man_bs_abs_cy is larger than zero"**

* `wat_man_bs_cov_cy`

---
**"can't be blank when wat_man_bs_cov_cy is present"**

* `wat_man_bs_tot_cy`

---
**"can't be blank when wat_man_tl_cov_cy is present and larger than 0"**

* `wat_man_tl_abs_cy`

---
**"can't be blank when wat_man_tl_tot_cy is present and larger than 0"**

**"must be less than or equal to %{count} (maximum coverage wat_man_tl_tot_cy)"**

**"can't be blank when wat_man_tl_abs_cy is larger than zero"**

* `wat_man_tl_cov_cy`

---
**"can't be blank when wat_man_tl_cov_cy is present"**

* `wat_man_tl_tot_cy`

---
**"can't be blank when wat_man_tt_cov_cy is present and larger than 0"**

* `wat_man_tt_abs_cy`

---
**"can't be blank when wat_man_tt_tot_cy is present and larger than 0"**

**"must be less than or equal to %{count} (maximum coverage wat_man_tt_tot_cy)"**

**"can't be blank when wat_man_tt_abs_cy is larger than zero"**

* `wat_man_tt_cov_cy`

---
**"can't be blank when wat_man_tt_cov_cy is present**

* `wat_man_tt_tot_cy`

---
**"can't be blank when wat_man_wc_cov_cy is present and larger than 0"**

* `wat_man_wc_abs_cy`

---
**"can't be blank when wat_man_wc_tot_cy is present and larger than 0"**

**"must be less than or equal to %{count} (maximum coverage wat_man_wc_tot_cy)"**

**"can't be blank when wat_man_wc_abs_cy is larger than zero"**

* `wat_man_wc_cov_cy`

---
**"can't be blank when wat_man_wc_cov_cy is present"**

* `wat_man_wc_tot_cy`

---
**"can't be blank when wat_ind_ww_cov_cy is present and larger than 0"**

* `wat_ind_ww_abs_cy`

---
**"can't be blank when wat_ind_ww_tot_cy is present and larger than 0"**

**"must be less than or equal to %{count} (maximum coverage wat_ind_ww_tot_cy)"**

**"can't be blank when wat_ind_ww_abs_cy is larger than zero"**

* `wat_ind_ww_cov_cy`

---
**"can't be blank when wat_ind_ww_cov_cy is present"**

**"must be less than or equal to %{count} (the current asset_size)"**

* `wat_ind_ww_tot_cy`

---
**"can't be blank when was_man_haz_abs_ly or was_man_nhaz_abs_ly is present"**

* `was_man_perc_ly`

---
**"can't be blank when was_ind_haz_abs_ly or was_ind_nhaz_abs_ly is present"**

* `was_ind_perc_ly`

---
**"can't be blank when was_man_haz_abs_cy or was_man_nhaz_abs_cy is present"**

* `was_man_perc_cy`

---
**"can't be blank when was_ind_haz_abs_cy or was_ind_nhaz_abs_cy is present"**

* `was_ind_perc_cy`

---
**"must be equal to 100"**

* `was_(l|i|wd|oth)_perc_cy`

---
**"the sum of diverted waste streams must be less than or equal to was_wd_perc_cy"**

* `was_(dwe|dr|do)_perc_cy`

---
**"must be equal to 100"**

* `was_(l|i|wd|oth)_perc_ly`

---
**"the sum of diverted waste streams must be less than or equal to was_wd_perc_ly"**

* `was_(dwe|dr|do)_perc_ly`

---
