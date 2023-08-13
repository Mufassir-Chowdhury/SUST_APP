### To create the table `course`
```sql
DEFINE TABLE course SCHEMAFUL;

define field course_code on course type string
    value meta::id(id);

define field course_title on course type string
    assert $value != none
    and $value = /^[A-Za-z ]+$/
    and string::len($value) > 5;

define index course_title on course fields course_title unique;

define field credit on course type float
    assert $value != none
    and $value > 0 and $value <= 3;

define field type on course type string
    assert $value inside ['Lab', 'Theory', 'Thesis'];
    
```

### `course` adding format
```sql
create course:`course_code` content {
    course_tile : string::trim($value (string)),
    credit : $value (float),
    type : $value (string),
};
```

### Example to insert some values
```sql
create course:cse133 content {
    course_title : string::trim('Structured Programming Language'),
    credit : 3,
    type : string::trim('Theory'),
};
```