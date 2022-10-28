--DESCRIBE student; --Displays info on table
--DROP TABLE student; -- Deletes table
CREATE TABLE student (
    student_id INT NOT NULL PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    major VARCHAR(20) NOT NULL
);
create table student.student2 as select * from student;
--ALTER TABLE student ADD gpa DECIMAL(3, 2);
 
 ALTER TABLE student DROP COLUMN (CREATED);