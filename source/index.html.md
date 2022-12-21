---
title: API Reference

toc_footers:
  - Have Questions?
  - <a href='https://gresb.com/contact'>Use the contact form</a>
  - <a href='https://github.com/GRESB/api-docs'>Or file an issue</a>
  - <a href='http://github.com/tripit/slate' style='position:absolute; bottom:5px;'>Documentation Powered by Slate</a>

includes:

  - protocol.md
  - oauth2.md
  - users.md
  - reporting-entities.md
  - assets.md
  - batch-operations.md
  - outliers.md
  - validation-endpoint.md
  - data-dictionary.md.erb
  - certifications.md
  - energy_ratings.md
  - portfolio.md
  - evidence.md
  - versioning.md.erb

search: true
---

# Introduction

The GRESB API is used for submitting data for the GRESB Real Estate assessment.
Applications can receive historical data when authorised by a given entity.
Data needs to be submitted for the asset and portfolio. Asset data is aggregated to the portfolio level (Real Estate assessment) where subsequently evidence is added to support the submitted data.
Asset data consists of utility data reflecting the performance of the portfolio. Provided per building, across energy, ghg, water, and waste, for the last two years of data.
Portfolio data consists of Management, Performance, and Development indicators which consist checkboxes, radiobuttons, text fields, and evidence.
See the <a href='https://documents.gresb.com/index.html'>Real Estate Reference Guide</a> for more information.

For testing the API, we suggest using one of the following tools:

- [Postman](https://www.getpostman.com/)
- [Insomnia REST Client](https://insomnia.rest/)
- [HTTPie](https://httpie.org/)

We created a [Postman collection](https://gresb-prd-public.s3.amazonaws.com/2023/data-partners/gresb-postman_collection.json) which you can use to test the different endpoints. It is not yet fully covering all the different indicator variables of the Real Estate assessment and will be updated at a later stage.