# Asset Outliers
```shell
curl https://api.gresb.com/api/v1/entities/{entity_id}/assets \
  -H "Authorization: Bearer $ACCESS_TOKEN"
```
GRESB provides a realtime outlier check to ensure high data quality and automatically flags
values that seem to be out of the norm. Outlier checks are performed after creating or updating a portfolio asset.

If no validation outliers have been detected, the `outliers:[]` field in the response will list them accordingly.

In the case `status` field reads `true`, it means a soft outlier had been flagged:
The data points associated to this outlier will be included in your score, but not in the calculation of the benchmark groups.

In the case that a hard outlier is flagged, the data points associated to this outlier will **not** be included in your score, nor in the calculation of benchmark groups.

> Response:

```json
[
    {
        "gresb_asset_id": {asset_id},
        "country": "US",
        "state_province": "DC",
        "city": "Washington, DC",
        // ... trimmed for brevity ...
        "certifications": [   {
            "id": {unique_id},
            "certification_id": 598,
            // ... trimmed for brevity ...
   }],
   "asset_size": "6000.0",
        "annual_data": [
          {
              "year": {reporting_year - 1},
              // ... trimmed for brevity ...
          },
          {
              "year": {reporting_year - 2},
              // ... trimmed for brevity ...
          },
        ],
        "_outliers": [
          {
            "kpi": "en",
            "type": "intensity",
            "accepted": true,
            "value": "2.5627716"
          },
          {
            "kpi": "en",
            "type": "lfl",
            "accepted": true,
            "value": "-28.20623403"
          },
          {
            "kpi": "ghg",
            "type": "lfl",
            "accepted": false,
            "value": "-95.59816432"
          }
        ],
      "created_at": {date},
      "updated_at": {date},
      "_validations": {"errors": {}}
    }
]
```
**Outlier types**:

- **LFL**: Like for like detection, compares values against last year
- **Intensity**: Detects abnormal values for the current year

**KPI**:

- **en**: Energy in kWh/m<sup>2</sup>
- **ghg**: Green house gases measured in tonnes/m<sup>2</sup>
- **was**: Waste in tonnes/m<sup>2</sup>
- **wat**: Water in m<sup>3</sup>/m<sup>2</sup>

**Accepted**:

- The `accepted` field gives you information whether or not this value will be included or excluded in scoring.
- **true**: The data points associated to this outlier will be included in your score, but not in the benchmark groups.
- **false**:  The data points associated to this outlier will <strong>not</strong> be included in your score.