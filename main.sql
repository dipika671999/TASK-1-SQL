
  /* CREATE TABLE STUDENT */
CREATE TABLE Student (    
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Email VARCHAR(100),
    DateOfBirth DATE,
    EnrollmentDate DATE
);
/* INSERT DATA INTO STUDENT TABLE*/
INSERT INTO Student (FirstName, LastName, Age, Email, DateOfBirth, EnrollmentDate)
VALUES 
    ('Dipika', 'Karpe', 22, 'dipikakarpe@example.com', '1999-06-06', '2024-01-10'),
	 ('pranali', 'pawar', 20, 'pranalipawar@example.com', '2001-02-11', '2024-01-10'),
	  ('Rohini', 'Kagne', 24, 'rohinikagne@example.com', '1998-04-16', '2024-01-10'),
       ('ajit',	'Suryawanshi',23,'ajitsuri@example.com','1996-03-3','2024-02-11'),
        ('dnyaneshwar',	'nagve',26,'dnyaneshwar@example.com','1997-09-1','2024-02-12');
  
  /*USE ALTER COMMAND TO ADD COLOUM PHONENUMBER*/
 ALTER TABLE Student
ADD PhoneNumber VARCHAR(15);

/* ADD NEW COLUMN CLASS */
ALTER TABLE Student
ADD CLASS VARCHAR(15);

/* ORDER BY Age */
SELECT * FROM Student
ORDER BY Age;

/* COUNT THE NUMBER OF STUDENTS */
SELECT COUNT(*) AS NumberOfStudents FROM Student;

/* FIND STUDENTS BORN AFTER 2000 */
SELECT * FROM Student
WHERE DateOfBirth > '2000-01-01';

/*drop columns individually*/
ALTER TABLE Student
DROP COLUMN PhoneNumber;


/* Select Specific Columns*/
SELECT FirstName, Email FROM Student;

/* SELECT  DISTINCT VALUES*/
SELECT DISTINCT LastName FROM Student;

/*. Filter Records with Conditions*/
SELECT * FROM Student
WHERE Age > 21;
SELECT * FROM Student