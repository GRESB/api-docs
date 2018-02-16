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

TBD
