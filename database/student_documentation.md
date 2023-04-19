```json
        "blood_group": "DEFINE FIELD blood_group ON student TYPE string ASSERT $value INSIDE ['A+', 'B+', 'AB+', 'O+', 'A-', 'B-', 'AB-', 'O-']",
        "current_semester": "DEFINE FIELD current_semester ON student TYPE number ASSERT $value != NONE AND $value >= 1 AND $value <= 8 AND math::round($value) = $value",
        "department": "DEFINE FIELD department ON student TYPE record(department) ASSERT $value != NONE",
        "email": "DEFINE FIELD email ON student TYPE object",
        "email.academic": "DEFINE FIELD email.academic ON student TYPE string ASSERT $value != NONE AND is::email($value) = true AND parse::email::host($value) = 'student.sust.edu' AND parse::email::user($value) >= 5 AND is::numeric(string::slice(parse::email::user($value), string::len(parse::email::user($value)) - 2, 2)) = true AND is::alpha(string::slice(parse::email::user($value), 0, string::len(parse::email::user($value)) - 2)) = true",
        "email.personal": "DEFINE FIELD email.personal ON student TYPE string ASSERT $value != NONE AND is::email($value) = true",
        "gender": "DEFINE FIELD gender ON student TYPE string ASSERT $value != NONE AND $value INSIDE ['male', 'female']",
        "name": "DEFINE FIELD name ON student TYPE string ASSERT $value != NONE AND $value = /^[A-Za-z ]+$/ AND string::len($value) >= 3",
        "personal": "DEFINE FIELD personal ON student TYPE object",
        "personal.birthday": "DEFINE FIELD personal.birthday ON student TYPE datetime ASSERT $value != NONE AND time::year($value) < time::year() - 15",
        "personal.father": "DEFINE FIELD personal.father ON student TYPE string ASSERT $value != NONE AND $value = /^[A-Za-z ]+$/ AND string::len($value) >= 3",
        "personal.hometown": "DEFINE FIELD personal.hometown ON student TYPE string ASSERT $value != NONE AND $value = /^[A-Za-z, ]+$/ AND string::len($value) >= 3",
        "personal.mother": "DEFINE FIELD personal.mother ON student TYPE string ASSERT $value != NONE AND $value = /^[A-Za-z ]+$/ AND string::len($value) >= 3",
        "personal.phone": "DEFINE FIELD personal.phone ON student TYPE number ASSERT $value != NONE AND math::round($value) = $value AND string::startsWith(<string> $value, '1') AND string::len(<string> $value) = 10",
        "privilege": "DEFINE FIELD privilege ON student TYPE string ASSERT $value = NONE OR ($value = /^[A-Za-z ]+$/ AND string::len($value) > 1)",
        "result": "DEFINE FIELD result ON student TYPE object",
        "result.cgpa": "DEFINE FIELD result.cgpa ON student TYPE float ASSERT $value != NONE AND $value >= 0 AND $value <= 4",
        "result.grade": "DEFINE FIELD result.grade ON student TYPE string ASSERT $value INSIDE ['A+', 'A', 'A-', 'B+', 'B', 'B-', 'C+', 'C', 'C-', 'F']",
        "result.total_credit": "DEFINE FIELD result.total_credit ON student TYPE float ASSERT $value != NONE AND $value >= 0 AND $value <= 160",
        "session": "DEFINE FIELD session ON student TYPE number ASSERT $value != NONE AND $value >= 1980 AND $value <= time::year() AND math::round($value) = $value"
    

        "academic_email": "DEFINE INDEX academic_email ON student FIELDS email.academic UNIQUE",
        "personal_email": "DEFINE INDEX personal_email ON student FIELDS email.personal UNIQUE"
    
```