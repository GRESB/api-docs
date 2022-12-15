# Outliers
```shell
curl https://api.gresb.com/api/v1/entities/{entity_id}/assets \
  -H "Authorization: Bearer $ACCESS_TOKEN"
```
GRESB provides a realtime outlier check to ensure data quality and automatically flags
values that seem to be out of the norm.Outlier checks are performed after creating or updating a Portfolio asset, 
errors occurred. If no validation outliers have been detected, the `outliers:[]` field in the response will list them accordingly.

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
            "id": {assigned_certification_id},
            "certification_id": 598,
            // ... trimmed for brevity ...
   }],
   "asset_size": "6000.0",
        "annual_data": [
          {
              "year": {Survey Year - 1},
              // ... trimmed for brevity ...
          },
          {
              "year": {Survey Year - 2},
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
      "created_at": "2022-03-08T13:00:44.970Z",
      "updated_at": "2022-03-08T13:00:45.060Z",
      "_validations": {"errors": {}}
    }
]
```
**Outlier types**:

- **LFL**: Like for like detection, compares values against last year
- **Intensity**: Detects abnormal values for the current reporting year

**KPI**:

- **en**: Energy inkWh/m<sup>2</sup>
- **ghg**: Green house gases measured in tonnes/m<sup>2</sup>
- **was**: Waste in tonnes/m<sup>2</sup>
- **wat**: Water in m<sup>3</sup>/m<sup>2</sup>

**Accepted**:

- The `accepted` field gives you information whether or not this value will be included or excluded in scoring.
- **true**: The data points associated to this outlier will be included in your score, but not in the benchmark groups.
- **false**:  The data points associated to this outlier will <strong>not</strong> be included in your score.