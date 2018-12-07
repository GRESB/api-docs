---
title: API Reference

toc_footers:
  - Have Questions?
  - Contact <a href='mailto:info@gresb.com'>info@gresb.com</a>
  - <a href='http://github.com/tripit/slate' style='position:absolute; bottom:5px;'>Documentation Powered by Slate</a>

includes:

  - protocol.md
  - oauth2.md
  - errors.md
  - users.md
  - survey-responses.md
  - asset-responses.md
  - data-dictionary.md
  - rules.md
  - thresholds_table.html.erb
  - versioning.md.erb

search: true
---

# Introduction

GRESB provides an API to facilitate the entry of asset level data into the
GRESB Asset Portal. After sending assets through the API the data needs to be
reviewed. This is done by resolving all warnings on the GRESB Asset Portal. At
this stage, the data can be read from the GRESB Asset Portal through the API.
This ensures the reviewed data exists within your application and database. The
customer may then upload its data from the GRESB Asset Portal to the GRESB Real
Estate Assessment for indicators RC5.1, PI1.1, PI2.1, PI3.1, PI4.1, RO4, ME2,
ME3, ME4, ME5.

