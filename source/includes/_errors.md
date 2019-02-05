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

## Simple Validation Rules

* Rule: Required fields when creating an asset
* Message: "can't be blank"
* Fields: `{asset_name, property_type_code, city, state_province, country, directly_managed, whole_building, asset_size, asset_own, new_construction, major_renovation, dc_change_energy, dc_change_water}`

