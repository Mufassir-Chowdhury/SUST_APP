```sql
DEFINE TABLE teacher SCHEMAFULL;

DEFINE FIELD name ON teacher TYPE string 
    ASSERT $value != NONE 
    AND $value = /^[A-Za-z ]+$/ 
    AND string::len($value) >= 3;

DEFINE FIELD department ON teacher TYPE record(department) 
    ASSERT $value != NONE;

DEFINE FIELD email ON teacher TYPE object;

DEFINE FIELD email.personal ON teacher TYPE string 
    ASSERT $value != NONE 
    AND is::email($value);

DEFINE INDEX personal_email ON teacher FIELDS email.personal UNIQUE;

DEFINE FIELD email.academic ON teacher TYPE string 
    ASSERT $value != NONE AND is::email($value) 
    AND parse::email::host($value) = 'sust.edu' 
    AND parse::email::user($value) >= 3;

DEFINE INDEX academic_email ON teacher FIELDS email.
academic UNIQUE;

DEFINE FIELD gender ON teacher TYPE string 
    ASSERT $value INSIDE ['male', 'female'];

DEFINE FIELD blood_group ON teacher TYPE string 
    ASSERT $value INSIDE ['A+', 'B+', 'AB+', 'O+', 'A-', 'B-', 'AB-', 'O-'];

DEFINE FIELD personal ON teacher TYPE object;

DEFINE FIELD personal.father ON teacher TYPE string 
    ASSERT $value != NONE 
    AND $value = /^[A-Za-z ]+$/ 
    AND string::len($value) >= 3;

DEFINE FIELD personal.mother ON teacher TYPE string 
    ASSERT $value != NONE 
    AND $value = /^[A-Za-z ]+$/ 
    AND string::len($value) >= 3;

--TODO
DEFINE FIELD personal.birthday ON teacher TYPE datetime 
    ASSERT $value != NONE AND 
    time::year($value) < time::year()-15;

DEFINE FIELD personal.phone ON teacher TYPE number 
    ASSERT $value != NONE 
    AND math::round($value) = $value 
    AND string::startsWith(<string> $value, '1') 
    AND string::len(<string> $value) = 10;

DEFINE FIELD personal.hometown ON teacher TYPE string 
    ASSERT $value != NONE 
    AND $value = /^[A-Za-z, ]+$/ 
    AND string::len($value) >= 3;  

```

```sql

```