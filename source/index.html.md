---
title: API Reference

toc_footers:
  - Have Questions?
  - Contact <a href='mailto:info@gresb.com'>info@gresb.com</a>
  - <a href='https://github.com/GRESB/api-docs'>Or file an issue</a>
  - <a href='http://github.com/tripit/slate' style='position:absolute; bottom:5px;'>Documentation Powered by Slate</a>

includes:

  - protocol.md
  - oauth2.md
  - users.md
  - reporting-entities.md
  - assets.md
  - data-dictionary.md.erb
  - errors.md
  - rules.md
  - thresholds_table.html.erb
  - versioning.md.erb

search: true
---

# Introduction

The GRESB API is used for submitting asset data to GRESB and includes live validation.
Applications can receive historical data when authorised by a given entity.
Data is split between building data; characteristics which are constant over time - and annual data; updated annualy.
Annual data is used to submit a response in the Real Estate Assessment.
Asset level indicators are RC5.1, NC.RC1.1, NC.RC2.1, PI1.1, PI2.1, PI3.1, and PI4.1.
See the <a href='https://documents.gresb.com/index.html'>Real Estate Reference Guide</a> for more information.

For testing the API, we suggest using one of the following tools:

- [Postman](https://www.getpostman.com/)
- [Insomnia REST Client](https://insomnia.rest/)
- [HTTPie](https://httpie.org/)

We also have an [OpenAPI](https://swagger.io/docs/specification/about/)
compatible specification file, which you can import into Postman, for example,
to get you started with the available URLs. You can find the
[API specification in JSON format here](https://api.gresb.com/api/v0/swagger_doc).
