# Outliers

```shell
curl https://api.gresb.com/api/v1/entities/5028/assets \
  -H "Authorization: Bearer $ACCESS_TOKEN"
```

> Response

```json
[
    {
        "gresb_asset_id": 442,
        "country": "NL",
        "state_province": "Noord-Holland",
        "city": "Amsterdam",
        // ... trimmed for brevity ...
        "certifications": [],
        "annual_data": [
          {
              "year": 2020,
              // ... trimmed for brevity ...
          },
          {
              "year": 2019,
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
        "created_at": "2018-01-15T11:07:13.436Z",
        "updated_at": "2021-01-24T12:05:11.456Z"
    }
]
```



GRESB provides a realtime outlier check to ensure data quality and automatically flags
values that seem to be out of the norm.

Outlier checks are performed after creating or updating a Portfolio asset, if no validation errors occurred.
If outliers have been detected, the `outliers: []` field in the response will list them accordingly.

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
