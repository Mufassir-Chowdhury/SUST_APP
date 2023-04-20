### To make a schemafull table `course` in database
```sql
DEFINE TABLE course SCHEMAFULL;
```

```sql
DEFINE FIELD code ON department TYPE number 
    ASSERT $value != NONE AND $value >= 100 AND $value <= 999 
    AND array::len(string::split(type::string($value), '.')) == 1;
define field course_id on course type string
assert $value!= none and $value.

define index course_id on department fields course_id unique; 
```
