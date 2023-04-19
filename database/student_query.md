```sql
DEFINE table student SCHEMAFULL;

/*define field id on student type number
    assert $value != none 
    and string::len(<string>$value) = 10 and 
    string::startsWith(<string>$value, '20') = true; */

DEFINE FIELD name ON student TYPE string 
    ASSERT $value != NONE 
    AND $value = /^[A-Za-z ]+$/ 
    AND string::len($value) >= 3;

DEFINE FIELD department ON student TYPE record(department) 
    ASSERT $value != NONE;

DEFINE FIELD email ON student TYPE object;

DEFINE FIELD email.personal ON student TYPE string 
    ASSERT $value != NONE 
    AND is::email($value);

DEFINE INDEX personal_email ON student FIELDS email.personal UNIQUE;

--TODO
DEFINE FIELD email.academic ON student TYPE string 
    ASSERT $value != NONE AND is::email($value) 
    AND parse::email::host($value) = 'student.sust.edu' 
    AND parse::email::user($value) >= 5 
    AND is::numeric(string::slice(parse::email::user($value), string::len(parse::email::user($value)) - 2, 2)) 
    AND is::alpha(string::slice(parse::email::user($value), 0, string::len(parse::email::user($value)) - 2));

DEFINE INDEX academic_email ON student FIELDS email.academic UNIQUE;

DEFINE FIELD gender ON student TYPE string 
    ASSERT $value INSIDE ['male', 'female'];

DEFINE FIELD session ON student TYPE number 
    ASSERT $value != NONE 
    AND $value >= 1980 AND $value <= time::year() 
    AND math::round($value) = $value;

DEFINE FIELD current_semester ON student TYPE number 
    ASSERT $value != NONE 
    AND $value >= 1 AND $value <= 8 
    AND math::round($value) = $value;

DEFINE FIELD blood_group ON student TYPE string 
    ASSERT $value INSIDE ['A+', 'B+', 'AB+', 'O+', 'A-', 'B-', 'AB-', 'O-'];

DEFINE FIELD privilege ON student TYPE string 
    ASSERT $value = NONE 
    OR ($value = /^[A-Za-z ]+$/ 
    AND string::len($value) > 1);

DEFINE FIELD personal ON student TYPE object;

DEFINE FIELD personal.father ON student TYPE string 
    ASSERT $value != NONE 
    AND $value = /^[A-Za-z ]+$/ 
    AND string::len($value) >= 3;

DEFINE FIELD personal.mother ON student TYPE string 
    ASSERT $value != NONE 
    AND $value = /^[A-Za-z ]+$/ 
    AND string::len($value) >= 3;

--TODO
DEFINE FIELD personal.birthday ON student TYPE datetime 
    ASSERT $value != NONE AND 
    time::year($value) < time::year()-15;

DEFINE FIELD personal.phone ON student TYPE number 
    ASSERT $value != NONE 
    AND math::round($value) = $value 
    AND string::startsWith(<string> $value, '1') 
    AND string::len(<string> $value) = 10;

DEFINE FIELD personal.hometown ON student TYPE string 
    ASSERT $value != NONE 
    AND $value = /^[A-Za-z, ]+$/ 
    AND string::len($value) >= 3;

DEFINE FIELD result ON student TYPE object;

DEFINE FIELD result.cgpa ON student TYPE float 
    ASSERT $value != NONE 
    AND $value >= 0 AND $value <= 4;

DEFINE FIELD result.grade ON student TYPE string 
    ASSERT $value INSIDE ['A+', 'A', 'A-', 'B+', 'B', 'B-', 'C+', 'C', 'C-', 'F'];

DEFINE FIELD result.total_credit ON student TYPE float 
    ASSERT $value != NONE 
    AND $value >= 0 AND $value <= 160;

```



```sql

CREATE student CONTENT {
    id : 2019331073,
    name: string::trim('Mufassir Ahmad Chowdhury'),
    department: department:CSE,
    email: {
       personal: string::trim('mac22214u@gmail.com'),
       academic:string::trim( 'mufassir73@student.sust.edu'),
    },
    gender: string::lowercase('male'),
    session: 2019,
    current_semester: 5,
    blood_group: string::trim('B+'),
    privilege: string::trim('CR'),
    personal: {
        father: string::trim('Hafiz Md Mashhud Chowdhury'),
        mother: string::trim('Afsana Begum'),
        birthday: "2001-07-10T07:18:52Z",
        phone: 01771144308,
        hometown: string::trim('Sylhet'),
    },
    result: {
        cgpa: 4,
        grade: string::trim('A+'),
        total_credit: 160,
    },
    
};

```