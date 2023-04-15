For making the databse table

```sql
DEFINE TABLE department SCHEMAFULL

DEFINE FIELD code ON department TYPE int 
ASSERT $value != NONE AND $value >= 100 AND $value <= 999;

DEFINE INDEX code ON department FIELDS code UNIQUE;

DEFINE FIELD letter_code ON department TYPE string
ASSERT $value != NONE AND string::len($value) = 3;

DEFINE INDEX letter_code ON department FIELDS letter_code UNIQUE;

DEFINE FIELD name ON department TYPE string ASSERT $value != NONE;

DEFINE INDEX name ON department FIELDS name UNIQUE;

DEFINE FIELD building ON department TYPE string ASSERT $value != NONE;

DEFINE FIELD floor ON department TYPE string ASSERT $value != NONE;
```


To remove a field and index
```sql
remove field name on table department;
remove index name on table department;
delete department;
```

```json
[
  {
    "time": "128.3µs",
    "status": "ERR",
    "detail": "Database record `department:CSE` already exists"
  }
]
```