-- ------------------------------
-- OPTION
-- ------------------------------

OPTION IMPORT;

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
-- TRANSACTION
-- ------------------------------

BEGIN TRANSACTION;

-- ------------------------------
-- TABLE DATA: department
-- ------------------------------


-- ------------------------------
-- TRANSACTION
-- ------------------------------

COMMIT TRANSACTION;

