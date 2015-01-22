---
title: API Reference

toc_footers:
  - Have Questions? <br><a href='http://github.com/GRESB/api-docs/issues'>Open an Issue on Github</a>

  - or contact <a href='mailto:u.scharf@gresb.com'>info@gresb.com</a>

  - <a href='http://github.com/tripit/slate' style='position:absolute; bottom:5px;'>Documentation Powered by Slate</a>


includes:

  - oauth2.md 
  - errors.md
  - versioning.md 
  - survey-responses.md
  - asset-responses.md
  - data-dictionary.md


search: true
---

# Introduction

<aside class="warning">
The GRESB API is in the early stages of development.  All documentation below is subject to change.  If you have any feedback regarding our API or the documentation, we would love to hear it! Feel free to submit your comments or questions [here](https://github.com/GRESB/api-docs/issues)
</aside>

GRESB currently provides an API to facilitate the entry of asset level data into the GRESB survey.


### Endpoints

- Testing Sandbox: `https://api-sandbox.gresb.com`

HTTP Basic Auth is used for our test environment.  You can access the API test environment at any point using our test key.

- Production: `https://api.gresb.com`

<aside class="info">Not yet available.</aside>
 
# Basic Operations

**The API gives you the ability to upload all asset level data in bulk, using JSON.  After uploading, every asset will be assigned an unique ID and can be edited individually 
using this ID.  All commands are based on the HTTP methods outlined by rest protocol.**  

