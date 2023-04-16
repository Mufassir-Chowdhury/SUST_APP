### To create the table `department`
```sql
DEFINE TABLE department SCHEMAFULL;

DEFINE FIELD code ON department TYPE number 
    ASSERT $value != NONE AND $value >= 100 AND $value <= 999 
    AND array::len(string::split(type::string($value), '.')) == 1;
DEFINE INDEX code ON department FIELDS code UNIQUE;

DEFINE FIELD letter_code ON department TYPE string 
    ASSERT $value != NONE AND string::len($value) = 3 AND $value = /[A-Z]{3}/;
DEFINE INDEX letter_code ON department FIELDS letter_code UNIQUE;

DEFINE FIELD name ON department TYPE string 
    ASSERT $value != NONE AND $value = /^[A-Za-z ]+$/
    AND string::len($value) > 5;
DEFINE INDEX name ON department FIELDS name UNIQUE;

DEFINE FIELD building ON department TYPE string 
    ASSERT $value != NONE AND string::len($value) > 0;

DEFINE FIELD floor ON department TYPE number 
    ASSERT $value != NONE AND $value > 0 AND $value <= 10
    AND array::len(string::split(type::string($value), '.')) == 1;
```



### `department` adding format via root
```sql
create department content {
    code : $value (int),
    id : string::trim($value (string)),
    letter_code : string::trim($value (string)),
    name : string::trim($value (string)),
    building : string::trim($value (string)),
    floor : $value (int),
};
```

### Adding `department` via root

```sql
create department content {
    code : 331,
    id : string::trim('CSE'),
    letter_code : string::trim('CSE'),
    name : string::trim('Computer Science and Engineering'),
    building : string::trim('Dr. M. A. Wazed Miah IICT Building'),
    floor : 3,
};

create department content {
    code : 123,
    id : string::trim('SWE'),
    letter_code : string::trim('SWE'),
    name : string::trim('Software Engineering'),
    building : string::trim('Dr. M. A. Wazed Miah IICT Building'),
    floor : 1
};

create department content {
    code : 330,
    id : string::trim('ECO'),
    letter_code : string::trim('ECO'),
    name : string::trim('Economics'),
    building : string::trim('D'),
    floor : 3
};

create department content {
    code : 132,
    id : string::trim('PHY'),
    letter_code : string::trim('PHY'),
    name : string::trim('Physics'),
    building : string::trim('A'),
    floor : 1
};
```


### getting department names
```sql
select name from department;
```

### getting information of a department via department name
```sql
select * from department where name = '$value';
```