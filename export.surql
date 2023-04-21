-- ------------------------------
-- OPTION
-- ------------------------------

OPTION IMPORT;

-- ------------------------------
-- TABLE: admin
-- ------------------------------

DEFINE TABLE admin SCHEMAFULL;

DEFINE FIELD blood_group ON admin TYPE string;
DEFINE FIELD department ON admin TYPE record(department);
DEFINE FIELD designation ON admin TYPE string;
DEFINE FIELD email ON admin TYPE object;
DEFINE FIELD email.academic ON admin TYPE string;
DEFINE FIELD email.personal ON admin TYPE string;
DEFINE FIELD gender ON admin TYPE string;
DEFINE FIELD id ON admin TYPE string;
DEFINE FIELD name ON admin TYPE string;
DEFINE FIELD personal ON admin TYPE object;
DEFINE FIELD personal.birthday ON admin TYPE datetime;
DEFINE FIELD personal.father ON admin TYPE string;
DEFINE FIELD personal.hometown ON admin TYPE string;
DEFINE FIELD personal.mother ON admin TYPE string;
DEFINE FIELD personal.phone ON admin TYPE string;

DEFINE INDEX academic_email ON admin FIELDS email.academic UNIQUE;
DEFINE INDEX id ON admin FIELDS id UNIQUE;
DEFINE INDEX personal_email ON admin FIELDS email.personal UNIQUE;
DEFINE INDEX personal_phone ON admin FIELDS personal.phone UNIQUE;

-- ------------------------------
-- TABLE: course
-- ------------------------------

DEFINE TABLE course SCHEMAFULL;

DEFINE FIELD credit ON course TYPE number;
DEFINE FIELD department ON course TYPE record(department);
DEFINE FIELD id ON course TYPE string;
DEFINE FIELD name ON course TYPE string;
DEFINE FIELD syllabus ON course TYPE array;
DEFINE FIELD syllabus[*] ON course TYPE object;
DEFINE FIELD syllabus[*].title ON course TYPE string;
DEFINE FIELD syllabus[*].topics[*] ON course TYPE string;
DEFINE FIELD type ON course TYPE string;

DEFINE INDEX id ON course FIELDS id UNIQUE;

-- ------------------------------
-- TABLE: department
-- ------------------------------

DEFINE TABLE department SCHEMAFULL;

DEFINE FIELD building ON department TYPE string ASSERT $value != NONE AND string::len($value) > 0;
DEFINE FIELD code ON department TYPE number ASSERT $value != NONE AND $value >= 100 AND $value <= 999 AND math::round($value) = $value;
DEFINE FIELD floor ON department TYPE number ASSERT $value != NONE AND $value > 0 AND $value <= 10 AND math::round($value) = $value;
DEFINE FIELD letter_code ON department TYPE string ASSERT $value != NONE AND string::len($value) = 3 AND $value = /[A-Z]{3}/;
DEFINE FIELD minor_course_code ON department TYPE string ASSERT $value != NONE AND $value = /[A-Za-z]{1}/ AND string::len($value) == 1;
DEFINE FIELD name ON department TYPE string ASSERT $value != NONE AND $value = /^[A-Za-z ]+$/ AND string::len($value) > 5;

DEFINE INDEX code ON department FIELDS code UNIQUE;
DEFINE INDEX letter_code ON department FIELDS letter_code UNIQUE;
DEFINE INDEX name ON department FIELDS name UNIQUE;

-- ------------------------------
-- TABLE: student
-- ------------------------------

DEFINE TABLE student SCHEMAFULL;

DEFINE FIELD blood_group ON student TYPE string;
DEFINE FIELD current_semester ON student TYPE number;
DEFINE FIELD department ON student TYPE record(department);
DEFINE FIELD email ON student TYPE object;
DEFINE FIELD email.academic ON student TYPE string;
DEFINE FIELD email.personal ON student TYPE string;
DEFINE FIELD gender ON student TYPE string;
DEFINE FIELD id ON student TYPE string;
DEFINE FIELD name ON student TYPE string;
DEFINE FIELD personal ON student TYPE object;
DEFINE FIELD personal.birthday ON student TYPE datetime;
DEFINE FIELD personal.father ON student TYPE string;
DEFINE FIELD personal.hometown ON student TYPE string;
DEFINE FIELD personal.mother ON student TYPE string;
DEFINE FIELD personal.phone ON student TYPE string;
DEFINE FIELD privilage ON student TYPE string;
DEFINE FIELD result ON student TYPE object;
DEFINE FIELD result.cgpa ON student TYPE number;
DEFINE FIELD result.grade ON student TYPE string;
DEFINE FIELD result.total_credit ON student TYPE number;
DEFINE FIELD session ON student TYPE number;

DEFINE INDEX academic_email ON student FIELDS email.academic UNIQUE;
DEFINE INDEX id ON student FIELDS id UNIQUE;
DEFINE INDEX personal_email ON student FIELDS email.personal UNIQUE;
DEFINE INDEX personal_phone ON student FIELDS personal.phone UNIQUE;

-- ------------------------------
-- TABLE: teacher
-- ------------------------------

DEFINE TABLE teacher SCHEMAFULL;

DEFINE FIELD blood_group ON teacher TYPE string;
DEFINE FIELD department ON teacher TYPE record(department);
DEFINE FIELD designation ON teacher TYPE string;
DEFINE FIELD email ON teacher TYPE object;
DEFINE FIELD email.academic ON teacher TYPE string;
DEFINE FIELD email.personal ON teacher TYPE string;
DEFINE FIELD gender ON teacher TYPE string;
DEFINE FIELD id ON teacher TYPE string;
DEFINE FIELD name ON teacher TYPE string;
DEFINE FIELD personal ON teacher TYPE object;
DEFINE FIELD personal.birthday ON teacher TYPE datetime;
DEFINE FIELD personal.father ON teacher TYPE string;
DEFINE FIELD personal.hometown ON teacher TYPE string;
DEFINE FIELD personal.mother ON teacher TYPE string;
DEFINE FIELD personal.phone ON teacher TYPE string;

DEFINE INDEX academic_email ON teacher FIELDS email.academic UNIQUE;
DEFINE INDEX id ON teacher FIELDS id UNIQUE;
DEFINE INDEX personal_email ON teacher FIELDS email.personal UNIQUE;
DEFINE INDEX personal_phone ON teacher FIELDS personal.phone UNIQUE;

-- ------------------------------
-- TRANSACTION
-- ------------------------------

BEGIN TRANSACTION;

-- ------------------------------
-- TABLE DATA: admin
-- ------------------------------

UPDATE admin:2019331004 CONTENT { blood_group: 'B+', department: department:CSE, designation: 'Assistant Something', email: { academic: 'mufassir73@student.sust.edu', personal: 'mac22214u@gmail.com' }, gender: 'male', id: admin:2019331004, name: 'Mr. X', personal: { birthday: '2001-07-10T07:18:52Z', father: 'Mr. X', hometown: 'Sylhet', mother: 'Mrs. Y', phone: '01771144308' } };

-- ------------------------------
-- TABLE DATA: course
-- ------------------------------

UPDATE course:CSE222 CONTENT { credit: 3, department: department:CSE, id: course:CSE222, name: 'Computer Science', syllabus: [{ title: 'Topic 1' }, { title: 'Topic 2' }], type: 'theory' };

-- ------------------------------
-- TABLE DATA: department
-- ------------------------------

UPDATE department:CSE CONTENT { building: 'Dr. M. A. Wazed Miah IICT Building', code: 331, floor: 3, id: department:CSE, letter_code: 'CSE', minor_course_code: 'D', name: 'Computer Science and Engineering' };
UPDATE department:ECO CONTENT { building: 'D', code: 330, floor: 3, id: department:ECO, letter_code: 'ECO', minor_course_code: 'B', name: 'Economics' };
UPDATE department:PHY CONTENT { building: 'A', code: 132, floor: 1, id: department:PHY, letter_code: 'PHY', minor_course_code: 'a', name: 'Physics' };
UPDATE department:SNW CONTENT { building: 'ds', code: 106, floor: 1, id: department:SNW, letter_code: 'SNW', minor_course_code: 'S', name: 'SOME noew department' };
UPDATE department:SWE CONTENT { building: 'Dr. M. A. Wazed Miah IICT Building', code: 123, floor: 1, id: department:SWE, letter_code: 'SWE', minor_course_code: 'A', name: 'Software Engineering' };

-- ------------------------------
-- TABLE DATA: student
-- ------------------------------

UPDATE student:2019331073 CONTENT { blood_group: 'B+', current_semester: 5, department: department:CSE, email: { academic: 'mufassir73@student.sust.edu', personal: 'mac22214u@gmail.com' }, gender: 'male', id: student:2019331073, name: 'Mufassir Ahmad Chowdhury', personal: { birthday: '2001-07-10T07:18:52Z', father: 'Hafiz Md Mashhud Chowdhury', hometown: 'Sylhet', mother: 'Afsana Begum', phone: '01771144308' }, privilage: 'CR', result: { cgpa: 4, grade: 'A+', total_credit: 160 }, session: 2019 };

-- ------------------------------
-- TABLE DATA: teacher
-- ------------------------------

UPDATE teacher:2019331002 CONTENT { blood_group: 'B+', department: department:CSE, designation: 'Assistant Professor', email: { academic: 'mufassir73@student.sust.edu', personal: 'mac22214u@gmail.com' }, gender: 'male', id: teacher:2019331002, name: 'Mainul Hasan', personal: { birthday: '2001-07-10T07:18:52Z', father: 'Mr. X', hometown: 'Sylhet', mother: 'Mrs. Y', phone: '01771144308' } };

-- ------------------------------
-- TRANSACTION
-- ------------------------------

COMMIT TRANSACTION;

