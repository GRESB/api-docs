---
title: API Reference

language_tabs:

- shell

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

The API complies with [REST](http://en.wikipedia.org/wiki/Representational_state_transfer) protocol.  It uses HTTP response codes to report errors, and responds to the HTTP methods detailed below.  Data is accepted in JSON format and responses are returned in JSON.  The API uses [OAuth 2.0](http://tools.ietf.org/html/rfc6749) for authorization.

GRESB strives to keep asset level data consistent, whether it is received via the API, the excel upload, or is entered directly.  For this reason, GRESB offers a data dictionary to assist with formatting.

The GRESB API uses four basic HTTP verbs; each communicates a unique request

     <table>
      <tbody>
        <tr>
          <th class="methodCell" colspan='2'>Methods:</th>
        </tr>
        <tr>
          <th>POST</th>
          <td>This method creates an item </td>
        </tr>
        <tr>
          <th>PUT</th>
          <td>This method updates an item</td>
        </tr>
        <tr>
          <th class="changelogCell">GET</th>
          <td>This method reads an item</td>
        </tr>
        <tr>
          <th class="changelogCell">DELETE</th>
          <td>This method deletes an item. </td>
        </tr>
      </tbody>
    </table>


### Endpoints

- Testing Sandbox: `https://api-sandbox.gresb.com`

HTTP Basic Auth is used for our test environment.  You can access the API test environment at any point using our test key.

- Production: `https://api.gresb.com`
 
# Basic Operations

**The API gives you the ability to upload all asset level data in bulk, using JSON.  After uploading, every asset will be assigned an unique ID and can be edited individually 
using this ID.  All commands are based on the HTTP methods outlined by rest protocol.**  

