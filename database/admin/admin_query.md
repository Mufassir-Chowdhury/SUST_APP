### To create the table `admin`
```sql
DEFINE TABLE admin SCHEMAFULL;

DEFINE FIELD name ON admin TYPE string 
    ASSERT $value != NONE 
    AND $value = /^[A-Za-z. ]+$/ 
    AND string::len($value) >= 3;

DEFINE FIELD department ON admin TYPE record(department) 
    ASSERT $value != NONE;

define field designation on admin type string
    ASSERT $value != NONE 
    AND $value = /^[A-Za-z. ]+$/ 
    AND string::len($value) >= 3;

DEFINE FIELD email ON admin TYPE object;

DEFINE FIELD email.personal ON admin TYPE string 
    ASSERT $value != NONE 
    AND is::email($value);

DEFINE INDEX personal_email ON admin FIELDS email.personal UNIQUE;

DEFINE FIELD email.academic ON admin TYPE string 
    ASSERT $value != NONE AND is::email($value) 
    AND parse::email::host($value) = 'sust.edu' 
    AND parse::email::user($value) >= 3;

DEFINE INDEX academic_email ON admin FIELDS email.academic UNIQUE;

DEFINE FIELD gender ON admin TYPE string 
    ASSERT $value INSIDE ['male', 'female'];

DEFINE FIELD blood_group ON admin TYPE string 
    ASSERT $value INSIDE ['A+', 'B+', 'AB+', 'O+', 'A-', 'B-', 'AB-', 'O-'];

DEFINE FIELD personal ON admin TYPE object;

DEFINE FIELD personal.father ON admin TYPE string 
    ASSERT $value != NONE 
    AND $value = /^[A-Za-z. ]+$/ 
    AND string::len($value) >= 3;

DEFINE FIELD personal.mother ON admin TYPE string 
    ASSERT $value != NONE 
    AND $value = /^[A-Za-z. ]+$/ 
    AND string::len($value) >= 3;

--TODO
DEFINE FIELD personal.birthday ON admin TYPE datetime 
    ASSERT $value != NONE AND 
    time::year($value) < time::year()-15;

DEFINE FIELD personal.phone ON admin TYPE number 
    ASSERT $value != NONE 
    AND math::round($value) = $value 
    AND string::startsWith(<string> $value, '1') 
    AND string::len(<string> $value) = 10;

DEFINE INDEX phone ON admin FIELDS personal.phone UNIQUE;

DEFINE FIELD personal.hometown ON admin TYPE string 
    ASSERT $value != NONE 
    AND $value = /^[A-Za-z, ]+$/ 
    AND string::len($value) >= 3;  
```

### `admin` adding format
```sql
CREATE admin CONTENT {
    id : $value (number),
    name: string::trim($value (string)),
    department: string::concat('department:', $value(string)),
	designation: string::trim($value (string)),
    email: {
       personal: string::trim($value (string)),
       academic: string::trim($value (string)),
    },
    gender: string::lowercase($value (string)),
    blood_group: string::trim($value (string)),
    personal: {
        father: string::trim($value (string)),
        mother: string::trim($value (string)),
        birthday: $value (datetime),
        phone: $value (number),
        hometown: string::trim($value (string)),
    },
};
```

### adding _admins_ via root

```sql
CREATE admin CONTENT {
    id : 2019331004,
    name: string::trim('Mr. X'),
    department: department:CSE,
	designation: string::trim("Assistant Something"),
    email: {
       personal: string::trim('mac22214u@gmail.com'),
       academic: string::trim('mufassir73@sust.edu'),
    },
    gender: string::lowercase('male'),
    blood_group: string::trim('B+'),
    personal: {
        father: string::trim('Mr. X'),
        mother: string::trim('Mrs. Y'),
        birthday: "2001-07-10T07:18:52Z",
        phone: 01771144308,
        hometown: string::trim('Sylhet'),
    },
};

CREATE admin CONTENT {
    id : 2019331002,
    name: string::trim('Mr. Xx'),
    department: department:CSE,
	designation: string::trim("Assistant Something"),
    email: {
       personal: string::trim('mac2221@gmail.com'),
       academic: string::trim('mufassir@sust.edu'),
    },
    gender: string::lowercase('male'),
    blood_group: string::trim('B+'),
    personal: {
        father: string::trim('Mr. X'),
        mother: string::trim('Mrs. Y'),
        birthday: "2001-07-10T07:18:52Z",
        phone: 01771144309,
        hometown: string::trim('Sylhet'),
    },
};
```