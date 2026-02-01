-- DDL Commands Syntax Examples:

-- 1. CREATE - Create new database objects
CREATE TABLE table_name (
    column1 datatype constraints,
    column2 datatype constraints,
    ...
);

-- 2. ALTER - Modify existing table structure
ALTER TABLE table_name ADD column_name datatype;
ALTER TABLE table_name DROP COLUMN column_name;
ALTER TABLE table_name MODIFY column_name new_datatype;

-- 3. DROP - Remove database objects
DROP TABLE table_name;

-- 4. TRUNCATE - Remove all records but keep structure
TRUNCATE TABLE table_name;

-- 5. RENAME - Rename database objects
RENAME TABLE old_name TO new_name;
