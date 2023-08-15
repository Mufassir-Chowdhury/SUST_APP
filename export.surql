-- ------------------------------
-- OPTION
-- ------------------------------

OPTION IMPORT;

-- ------------------------------
-- SCOPES
-- ------------------------------

DEFINE SCOPE admin SESSION 1d SIGNIN (SELECT ->login->admin.id AS id FROM user WHERE email = $email AND crypto::argon2::compare(password, $password) SPLIT ON id);
DEFINE SCOPE student SESSION 1d SIGNIN (SELECT ->login->student.id AS id FROM user WHERE email = $email AND crypto::argon2::compare(password, $password) SPLIT ON id);
DEFINE SCOPE teacher SESSION 1d SIGNIN (SELECT ->login->teacher.id AS id FROM user WHERE email = $email AND crypto::argon2::compare(password, $password) SPLIT ON id);

-- ------------------------------
-- TABLE: admin
-- ------------------------------

DEFINE TABLE admin SCHEMAFULL;

DEFINE FIELD blood_group ON admin TYPE string ASSERT $value INSIDE ['A+', 'B+', 'AB+', 'O+', 'A-', 'B-', 'AB-', 'O-'];
DEFINE FIELD department ON admin TYPE record(department) ASSERT $value != NONE;
DEFINE FIELD designation ON admin TYPE string ASSERT $value != NONE AND $value = /^[A-Za-z. ]+$/ AND string::len($value) >= 3;
DEFINE FIELD email ON admin TYPE object;
DEFINE FIELD email.academic ON admin TYPE string ASSERT $value != NONE AND is::email($value) AND parse::email::host($value) = 'sust.edu' AND parse::email::user($value) >= 3;
DEFINE FIELD email.personal ON admin TYPE string ASSERT $value != NONE AND is::email($value);
DEFINE FIELD gender ON admin TYPE string ASSERT $value INSIDE ['male', 'female'];
DEFINE FIELD id ON admin TYPE string;
DEFINE FIELD name ON admin TYPE string ASSERT $value != NONE AND $value = /^[A-Za-z. ]+$/ AND string::len($value) >= 3;
DEFINE FIELD personal ON admin TYPE object;
DEFINE FIELD personal.birthday ON admin TYPE datetime ASSERT $value != NONE AND time::year($value) < time::year() - 15;
DEFINE FIELD personal.father ON admin TYPE string ASSERT $value != NONE AND $value = /^[A-Za-z. ]+$/ AND string::len($value) >= 3;
DEFINE FIELD personal.hometown ON admin TYPE string ASSERT $value != NONE AND $value = /^[A-Za-z, ]+$/ AND string::len($value) >= 3;
DEFINE FIELD personal.mother ON admin TYPE string ASSERT $value != NONE AND $value = /^[A-Za-z. ]+$/ AND string::len($value) >= 3;
DEFINE FIELD personal.phone ON admin TYPE string;

DEFINE INDEX academic_email ON admin FIELDS email.academic UNIQUE;
DEFINE INDEX personal_email ON admin FIELDS email.personal UNIQUE;
DEFINE INDEX phone ON admin FIELDS personal.phone UNIQUE;

-- ------------------------------
-- TABLE: course
-- ------------------------------

DEFINE TABLE course SCHEMAFULL;

DEFINE FIELD credit ON course TYPE float;
DEFINE FIELD department ON course TYPE record(department);
DEFINE FIELD id ON course TYPE string;
DEFINE FIELD name ON course TYPE string;
DEFINE FIELD syllabus ON course TYPE array;
DEFINE FIELD syllabus[*] ON course TYPE object;
DEFINE FIELD syllabus[*].title ON course TYPE string;
DEFINE FIELD syllabus[*].topics ON course TYPE array;
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
DEFINE FIELD minor_course_code ON department TYPE string ASSERT $value != NONE AND $value = /[A-Z]{1}/ AND string::len($value) == 1;
DEFINE FIELD name ON department TYPE string ASSERT $value != NONE AND $value = /^[A-Za-z ]+$/ AND string::len($value) > 5;

DEFINE INDEX code ON department FIELDS code UNIQUE;
DEFINE INDEX letter_code ON department FIELDS letter_code UNIQUE;
DEFINE INDEX minor_course_code ON department FIELDS minor_course_code UNIQUE;
DEFINE INDEX name ON department FIELDS name UNIQUE;

-- ------------------------------
-- TABLE: login
-- ------------------------------

DEFINE TABLE login SCHEMALESS PERMISSIONS NONE;

-- ------------------------------
-- TABLE: offers
-- ------------------------------

DEFINE TABLE offers SCHEMALESS PERMISSIONS NONE;

-- ------------------------------
-- TABLE: student
-- ------------------------------

DEFINE TABLE student SCHEMAFULL;

DEFINE FIELD blood_group ON student TYPE string ASSERT $value INSIDE ['A+', 'B+', 'AB+', 'O+', 'A-', 'B-', 'AB-', 'O-'];
DEFINE FIELD current_semester ON student TYPE number ASSERT $value != NONE AND $value >= 1 AND $value <= 8 AND math::round($value) = $value;
DEFINE FIELD department ON student TYPE record(department) ASSERT $value != NONE;
DEFINE FIELD email ON student TYPE object;
DEFINE FIELD email.academic ON student TYPE string ASSERT $value != NONE AND is::email($value) AND parse::email::host($value) = 'student.sust.edu' AND parse::email::user($value) >= 5 AND is::numeric(string::slice(parse::email::user($value), string::len(parse::email::user($value)) - 2, 2)) AND is::alpha(string::slice(parse::email::user($value), 0, string::len(parse::email::user($value)) - 2));
DEFINE FIELD email.personal ON student TYPE string ASSERT $value != NONE AND is::email($value);
DEFINE FIELD gender ON student TYPE string ASSERT $value INSIDE ['male', 'female'];
DEFINE FIELD id ON student TYPE string;
DEFINE FIELD name ON student TYPE string ASSERT $value != NONE AND $value = /^[A-Za-z. ]+$/ AND string::len($value) >= 3;
DEFINE FIELD personal ON student TYPE object;
DEFINE FIELD personal.birthday ON student TYPE datetime ASSERT $value != NONE AND time::year($value) < time::year() - 15;
DEFINE FIELD personal.father ON student TYPE string ASSERT $value != NONE AND $value = /^[A-Za-z. ]+$/ AND string::len($value) >= 3;
DEFINE FIELD personal.hometown ON student TYPE string ASSERT $value != NONE AND $value = /^[A-Za-z, ]+$/ AND string::len($value) >= 3;
DEFINE FIELD personal.mother ON student TYPE string ASSERT $value != NONE AND $value = /^[A-Za-z. ]+$/ AND string::len($value) >= 3;
DEFINE FIELD personal.phone ON student TYPE string;
DEFINE FIELD privilege ON student TYPE string ASSERT $value = NONE OR ($value = /^[A-Za-z. ]+$/ AND string::len($value) > 1);
DEFINE FIELD result ON student TYPE object;
DEFINE FIELD result.cgpa ON student TYPE float ASSERT $value == NONE OR $value >= 0 AND $value <= 4;
DEFINE FIELD result.grade ON student TYPE string ASSERT $value == NONE OR $value INSIDE ['A+', 'A', 'A-', 'B+', 'B', 'B-', 'C+', 'C', 'C-', 'F'];
DEFINE FIELD result.total_credit ON student TYPE float ASSERT $value == NONE OR $value >= 0 AND $value <= 160;
DEFINE FIELD session ON student TYPE number ASSERT $value != NONE AND $value >= 1980 AND $value <= time::year() AND math::round($value) = $value;

DEFINE INDEX academic_email ON student FIELDS email.academic UNIQUE;
DEFINE INDEX personal_email ON student FIELDS email.personal UNIQUE;
DEFINE INDEX phone ON student FIELDS personal.phone UNIQUE;

-- ------------------------------
-- TABLE: teacher
-- ------------------------------

DEFINE TABLE teacher SCHEMAFULL;

DEFINE FIELD blood_group ON teacher TYPE string ASSERT $value INSIDE ['A+', 'B+', 'AB+', 'O+', 'A-', 'B-', 'AB-', 'O-'];
DEFINE FIELD department ON teacher TYPE record(department) ASSERT $value != NONE;
DEFINE FIELD designation ON teacher TYPE string ASSERT $value INSIDE ['Lecturer', 'Assistant Professor', 'Professor'];
DEFINE FIELD email ON teacher TYPE object;
DEFINE FIELD email.academic ON teacher TYPE string ASSERT $value != NONE AND is::email($value) AND parse::email::host($value) = 'sust.edu' AND parse::email::user($value) >= 3;
DEFINE FIELD email.personal ON teacher TYPE string ASSERT $value != NONE AND is::email($value);
DEFINE FIELD gender ON teacher TYPE string ASSERT $value INSIDE ['male', 'female'];
DEFINE FIELD id ON teacher TYPE string;
DEFINE FIELD name ON teacher TYPE string ASSERT $value != NONE AND $value = /^[A-Za-z .]+$/ AND string::len($value) >= 3;
DEFINE FIELD personal ON teacher TYPE object;
DEFINE FIELD personal.birthday ON teacher TYPE datetime ASSERT $value != NONE AND time::year($value) < time::year() - 15;
DEFINE FIELD personal.father ON teacher TYPE string ASSERT $value != NONE AND $value = /^[A-Za-z .]+$/ AND string::len($value) >= 3;
DEFINE FIELD personal.hometown ON teacher TYPE string ASSERT $value != NONE AND $value = /^[A-Za-z, ]+$/ AND string::len($value) >= 3;
DEFINE FIELD personal.mother ON teacher TYPE string ASSERT $value != NONE AND $value = /^[A-Za-z .]+$/ AND string::len($value) >= 3;
DEFINE FIELD personal.phone ON teacher TYPE string;

DEFINE INDEX academic_email ON teacher FIELDS email.academic UNIQUE;
DEFINE INDEX personal_email ON teacher FIELDS email.personal UNIQUE;
DEFINE INDEX phone ON teacher FIELDS personal.phone UNIQUE;

-- ------------------------------
-- TABLE: teaches
-- ------------------------------

DEFINE TABLE teaches SCHEMALESS PERMISSIONS NONE;

-- ------------------------------
-- TABLE: user
-- ------------------------------

DEFINE TABLE user SCHEMAFULL;

DEFINE FIELD email ON user TYPE string ASSERT $value != NONE AND is::email($value);
DEFINE FIELD password ON user TYPE string ASSERT $value != NONE;

DEFINE INDEX email ON user FIELDS email UNIQUE;

-- ------------------------------
-- TRANSACTION
-- ------------------------------

BEGIN TRANSACTION;

-- ------------------------------
-- TABLE DATA: admin
-- ------------------------------

UPDATE admin:2019331002 CONTENT { blood_group: 'B+', department: department:CSE, designation: 'Assistant Something', email: { academic: 'mufassir@sust.edu', personal: 'mac2221@gmail.com' }, gender: 'male', id: admin:2019331002, name: 'Mr. Xx', personal: { birthday: '2001-07-10T07:18:52Z', father: 'Mr. X', hometown: 'Sylhet', mother: 'Mrs. Y', phone: '01771144309' } };
UPDATE admin:2019331004 CONTENT { blood_group: 'B+', department: department:CSE, designation: 'Assistant Something', email: { academic: 'mufassir73@sust.edu', personal: 'mac22214u@gmail.com' }, gender: 'male', id: admin:2019331004, name: 'Mr. X', personal: { birthday: '2001-07-10T07:18:52Z', father: 'Mr. X', hometown: 'Sylhet', mother: 'Mrs. Y', phone: '01771144308' } };

-- ------------------------------
-- TABLE DATA: course
-- ------------------------------

UPDATE course:CSE222 CONTENT { credit: 3, department: department:CSE, id: course:CSE222, name: 'Computer Science', syllabus: [{ title: 'Topic 1', topics: ['Discussion', 'Something other than that'] }, { title: 'Topic 2', topics: ['Discussion2', 'Something other than that'] }], type: 'theory' };

-- ------------------------------
-- TABLE DATA: department
-- ------------------------------

UPDATE department:CSE CONTENT { building: 'Dr. M. A. Wazed Miah IICT Building', code: 331, floor: 3, id: department:CSE, letter_code: 'CSE', minor_course_code: 'D', name: 'Computer Science and Engineering' };
UPDATE department:ECO CONTENT { building: 'D', code: 330, floor: 3, id: department:ECO, letter_code: 'ECO', minor_course_code: 'B', name: 'Economics' };
UPDATE department:PHY CONTENT { building: 'A', code: 132, floor: 1, id: department:PHY, letter_code: 'PHY', minor_course_code: 'C', name: 'Physics' };
UPDATE department:SWE CONTENT { building: 'Dr. M. A. Wazed Miah IICT Building', code: 123, floor: 1, id: department:SWE, letter_code: 'SWE', minor_course_code: 'A', name: 'Software Engineering' };

-- ------------------------------
-- TABLE DATA: login
-- ------------------------------

RELATE user:ws6uynksgs1kdr07b3r8 -> login:1sjkmi7o2a9f98a978gi -> teacher:2019331073 CONTENT { __: true, id: login:1sjkmi7o2a9f98a978gi, in: user:ws6uynksgs1kdr07b3r8, out: teacher:2019331073 };
RELATE user:xz5o4prrbak776nivu4a -> login:2or2pea30ymoa6ko5905 -> student:2019331013 CONTENT { __: true, id: login:2or2pea30ymoa6ko5905, in: user:xz5o4prrbak776nivu4a, out: student:2019331013 };
RELATE user:aasa01kbaknch7ol17w7 -> login:a6j4uyrajbtxp64xegnp -> student:2019331073 CONTENT { __: true, id: login:a6j4uyrajbtxp64xegnp, in: user:aasa01kbaknch7ol17w7, out: student:2019331073 };
RELATE user:d9pu7wrq9qgg9ssojw78 -> login:jadeoaijybhx570kkrc3 -> admin:2019331002 CONTENT { __: true, id: login:jadeoaijybhx570kkrc3, in: user:d9pu7wrq9qgg9ssojw78, out: admin:2019331002 };
RELATE user:3sx7fe9v6w58gag2b625 -> login:oh12q5ju4z4l60t2pn0a -> teacher:2016331033 CONTENT { __: true, id: login:oh12q5ju4z4l60t2pn0a, in: user:3sx7fe9v6w58gag2b625, out: teacher:2016331033 };

-- ------------------------------
-- TABLE DATA: offers
-- ------------------------------

RELATE department:ECO -> offers:1jfzfa9qu33174ouv5nt -> course:CSE222 CONTENT { __: true, id: offers:1jfzfa9qu33174ouv5nt, in: department:ECO, out: course:CSE222, semester: 3, year: 2019 };
RELATE department:CSE -> offers:t5hazd30yi26x82u5n2l -> course:CSE222 CONTENT { __: true, id: offers:t5hazd30yi26x82u5n2l, in: department:CSE, out: course:CSE222, semester: 12, year: 2019 };

-- ------------------------------
-- TABLE DATA: student
-- ------------------------------

UPDATE student:2019331013 CONTENT { blood_group: 'A+', current_semester: 5, department: department:CSE, email: { academic: 'asanul13@student.sust.edu', personal: 'asanulhaquekiron@gmail.com' }, gender: 'male', id: student:2019331013, name: 'Asanul Haque Kiron', personal: { birthday: '2000-12-03T07:18:52Z', father: 'Md Mojammel Haque', hometown: 'Naogaon', mother: 'Most Ayasha Siddika', phone: '01771144309' }, result: { cgpa: 3.94, grade: 'A', total_credit: 160 }, session: 2019 };
UPDATE student:2019331073 CONTENT { blood_group: 'B+', current_semester: 5, department: department:CSE, email: { academic: 'mufassir73@student.sust.edu', personal: 'mac22214u@gmail.com' }, gender: 'male', id: student:2019331073, name: 'Mufassir Ahmad Chowdhury', personal: { birthday: '2001-07-10T07:18:52Z', father: 'Hafiz Md Mashhud Chowdhury', hometown: 'Sylhet', mother: 'Afsana Begum', phone: '01771144308' }, privilege: 'CR', result: { cgpa: 4, grade: 'A+', total_credit: 160 }, session: 2019 };

-- ------------------------------
-- TABLE DATA: teacher
-- ------------------------------

UPDATE teacher:2016331033 CONTENT { blood_group: 'B+', department: department:CSE, designation: 'Lecturer', email: { academic: 'xyz@sust.edu', personal: 'xyzz@gmail.com' }, gender: 'male', id: teacher:2016331033, name: 'Mr. X', personal: { birthday: '2001-07-10T07:18:52Z', father: 'Mr. Y', hometown: 'Khulna', mother: 'Mrs. Z', phone: '1771144309' } };
UPDATE teacher:2019331073 CONTENT { blood_group: 'B+', department: department:CSE, designation: 'Lecturer', email: { academic: 'mufassir73@sust.edu', personal: 'mac22214u@gmail.com' }, gender: 'male', id: teacher:2019331073, name: 'Mufassir Ahmad Chowdhury', personal: { birthday: '2001-07-10T07:18:52Z', father: 'Hafiz Md Mashhud Chowdhury', hometown: 'Sylhet', mother: 'Afsana Begum', phone: '1771144308' } };

-- ------------------------------
-- TABLE DATA: teaches
-- ------------------------------

RELATE teacher:2019331073 -> teaches:o94o6fvp390utzmery77 -> offers:1jfzfa9qu33174ouv5nt CONTENT { __: true, id: teaches:o94o6fvp390utzmery77, in: teacher:2019331073, out: offers:1jfzfa9qu33174ouv5nt };
RELATE teacher:2019331073 -> teaches:x700jf9ofic4o8lkfxnv -> offers:t5hazd30yi26x82u5n2l CONTENT { __: true, id: teaches:x700jf9ofic4o8lkfxnv, in: teacher:2019331073, out: offers:t5hazd30yi26x82u5n2l };

-- ------------------------------
-- TABLE DATA: user
-- ------------------------------

UPDATE user:3sx7fe9v6w58gag2b625 CONTENT { email: 'xyz@sust.edu', id: user:3sx7fe9v6w58gag2b625, password: '$argon2id$v=19$m=19456,t=2,p=1$7JLreAVwXh73ALGEEjjtXw$DwpTTl/o2TwlZoooQ+9AC8MqwFCmpiIeGt7T54HU3Jc' };
UPDATE user:aasa01kbaknch7ol17w7 CONTENT { email: 'mufassir73@student.sust.edu', id: user:aasa01kbaknch7ol17w7, password: '$argon2id$v=19$m=19456,t=2,p=1$c1fIG/sv0IV5k1UFScZVZg$92aoHf8Y/2wUWTBccYvJ1OmtbwkIAwCkaCksS3+w/b8' };
UPDATE user:d9pu7wrq9qgg9ssojw78 CONTENT { email: 'mufassir@sust.edu', id: user:d9pu7wrq9qgg9ssojw78, password: '$argon2id$v=19$m=19456,t=2,p=1$z9bb3s0hsj/Y4eFgiOYeDw$FvNIPOqc39RLOnm1tf3/oALeopjHBh5u8+kDi/BEuWI' };
UPDATE user:ws6uynksgs1kdr07b3r8 CONTENT { email: 'mufassir73@sust.edu', id: user:ws6uynksgs1kdr07b3r8, password: '$argon2id$v=19$m=19456,t=2,p=1$mPBgfJGt3zXLfBgw7m4+4A$sG5wE599w7moglTaMHc5ERT8nJNg77mNhB61M91R1Qg' };
UPDATE user:xz5o4prrbak776nivu4a CONTENT { email: 'asanul13@student.sust.edu', id: user:xz5o4prrbak776nivu4a, password: '$argon2id$v=19$m=19456,t=2,p=1$bA8wPGQ2nVcvf29yRNdpVg$YlyMWq/crbG+rvpGk4IomFzYf2vnyDs0EtwFWlDXenQ' };

-- ------------------------------
-- TRANSACTION
-- ------------------------------

COMMIT TRANSACTION;

