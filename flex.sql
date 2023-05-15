use flex

select* from flexuser
select* from course
select cname from course
select tId, teaches.cId, enrollment.stuId from teaches
inner join 
course on course.code=teaches.cId
inner join flexuser on teaches.tId=flexuser.id
inner join enrollment on enrollment.cId=course.code and teaches.cId=enrollment.cId

select tId, teaches.cId, stuId from teaches
inner join enrollment on enrollment.cId=teaches.cId

select* from enrollment

insert into enrollment values('21i-0390', 'CS-2001', 'A', '01-09-2022', 'C', 2, 1);

select* from feedback
select* from teaches
select* from attendance
select* from course
select* from coursehaveSec
select* from enrollment
select* from evaluation
select* from flexuser
select* from manageMarks
select* from offers
select* from registration_request
select* from sections


ALTER TABLE feedback
alter COLUMN metric float;

select concat(firstName, ' ',lastName ) from flexuser where id='21i-0390'

select* from course
select code, cname from course
select* from course
select code, cname, ctype, crdHrs from offers
inner join course on course.code=offers.cId

select* from attendance
insert into attendance values
('02/04/2023', '21i-0390', '21i-0394', 'CS-2001', 'A', 'Present');
insert into attendance values
('03/04/2023', '21i-0390', '21i-0394', 'CS-2001', 'A', 'Present');
insert into attendance values
('04/04/2023', '21i-0390', '21i-0394', 'CS-2001', 'A', 'Present');
insert into attendance values
('05/04/2023', '21i-0390', '21i-0394', 'CS-2001', 'A', 'Present');
insert into attendance values
('06/04/2023', '21i-0390', '21i-0394', 'CS-2001', 'A', 'Absent');

select attDate, cId, sect, status from attendance

select* from manageMarks
select* from evaluation

insert into evaluation values
('Quiz', 10, 20, 'CS-2001');
insert into evaluation values
('Assignment 1', 10, 100, 'CS-2001');

insert into manageMarks values
('21i-0394', 'CS-2001', '21i-0390', 'Quiz', 9);
insert into manageMarks values
('21i-0394', 'CS-2001', '21i-0390', 'Assignment 1', 89);

select manageMarks.cId, evaluation.evalType, obtMarks, totalMarks, weightage
from manageMarks inner join evaluation on evaluation.cId=manageMarks.cId
and evaluation.evalType=manageMarks.evalType

select code, cname, secId, crdHrs, grade, points, type from enrollment
inner join course on course.code=enrollment.cId 

select* from teaches

go
CREATE TRIGGER trg_limit_teacher_courses
ON teaches
FOR INSERT
AS
BEGIN
    DECLARE @teacher_id varchar(10)
    SELECT @teacher_id = tId FROM inserted
    
    DECLARE @course_count int
    SELECT @course_count = COUNT(*) FROM teaches WHERE tId = @teacher_id
    
    IF (@course_count >= 3)
    BEGIN
        RAISERROR ('Teacher cannot teach more than 3 courses', 16, 1)
        ROLLBACK TRANSACTION
    END
END
go

select* from course
select* from teaches
select* from offers
select* from enrollment

alter table enrollment
add semester varchar(20)


UPDATE enrollment
SET semester = 'fall2022'
WHERE stuId = '21i-0390';


insert into teaches values
('EE-2001', '21i-0394', '3', '2023', 'fall2023'); --check if trigger is working or not?

select* from offers

alter table offers 
add year varchar(5)

alter table offers 
add semester varchar(20)

UPDATE offers
SET semester = 'fall2022'
WHERE cId = '21i-0390';

delete from offers
where cId='CS-2001'

insert into offers values
('CS-2001', '21i-0393', 0, '2023', 'fall2023');

--select id from flexuser
--where username=@username

--select year, semester from offers 
--where cId=@course

--select year, semester from offers where
--cId = 'CS-2001' 

select* from offers


ALTER TABLE offers
ADD CONSTRAINT FK_admin_offers
FOREIGN KEY (adId)
REFERENCES flexuser (id)

ALTER TABLE offers
ADD CONSTRAINT UQ_Course_Year
UNIQUE (cId, year)

insert into offers values
('CS-2001', '21i-0393', 0, '2023', 'fall2023');

select* from registration_request

-- First, drop the primary key constraint
ALTER TABLE registration_request
DROP CONSTRAINT [PK__registra__184B771CBAE5CE10]; --put name of primary key here

CREATE SEQUENCE seq_registration_request
START WITH 1
INCREMENT BY 1;

-- Finally, add the primary key constraint back
ALTER TABLE registration_request
ADD CONSTRAINT PK__registra__184B771CBAE5CE10 PRIMARY KEY (regId);

---experimenting
--insert into registration_request values
--(next value for seq_registration_request, '21i-0390', 'CS-2002', '02/04/2023', 'pending');  --register for only those courses which have been offered.

--insert into registration_request values
--(next value for seq_registration_request, '21i-0390', 'CS-2003', GETDATE(), 'pending');  --register for only those courses which have been offered.

--delete from registration_request
--where stuId='21i-0390'


select* from registration_request

select code from course where cname like '%object%'
--(SELECT code FROM course WHERE code = --
select code, cname, ctype, crdHrs from offers inner join course on course.code = offers.cId
where cId='CS-2002'
--inner join course on course.code=registration_request
select* from offers
order by cId



--select* from registration_request where requestStatus='Pending'
--change requeststatus from pending to accepted
--make any entry of that student with than course in enrollment table
--increment the reg count in offers table by 1 which is done by trigger

select* from enrollment

go
CREATE TRIGGER enrollment_insert_trigger
ON enrollment
AFTER INSERT
AS
BEGIN
    UPDATE offers
    SET regcount = regcount + 1
    WHERE cId = (SELECT cId FROM inserted)
END
go

select* from enrollment

----testing trigger works fine
--insert into enrollment values 
--('21i-0390', 'CS-2002', 'A', GETDATE(), 'I', 0, '2', 'fall2022');

--delete from enrollment where
--cId='CS-2002'
go
CREATE TRIGGER trigger_limit_studentCourses
ON enrollment
AFTER INSERT
AS
BEGIN
     
	 declare @studentId varchar(10), @semest varchar(20)
	 SELECT @studentId = stuId,
	 @semest = semester FROM inserted
    -- Update the num_courses column for the inserted row
    UPDATE enrollment
    SET numCourses = numCourses + 1
    WHERE stuId = @studentId AND semester = @semest;

    -- Check if the student has enrolled in more than 6 courses in the current semester
    IF (SELECT COUNT(*) FROM enrollment WHERE stuId = @studentId AND semester = @semest) > 6
    BEGIN
        RAISERROR ('Cannot enroll in more than 6 courses in a semester.', 16, 1);
        ROLLBACK TRANSACTION;
    END
END
go

select* from enrollment
select* from offers

--testing trigger and then resetting values
--insert into enrollment values
--('21i-0390', 'CS-2002', 'A', GETDATE(), 'I', 0, 1, 'fall2022');
--delete from enrollment
--where cId='CS-2002'
--update offers
--set regCount=0
--where cId='CS-2002'
--update enrollment
--set numCourses=1
--where cId='CS-2001'

--error msg you have reached your limit of courses for this semester on frontend inside a label

CREATE TABLE trail
(ACTIVITY VARCHAR(40), DATE DATETIME);

GO
CREATE TRIGGER auditTrail
ON flexuser
FOR
INSERT
AS
BEGIN

   declare @userId varchar(10)
   SELECT @userId = id FROM inserted
   INSERT INTO trail VALUES
   ('User with id ' + @userId + 'registered into flex on ', GETDATE());
END
GO

select* from sections
insert into sections values
('B', 'CS-2001', 100);
select* from coursehaveSec

insert into coursehaveSec values
('B', 'CS-2001');
delete from coursehaveSec
where secId='B' and code='CS-2001'

select* from teaches
--doing this to manage attendance for multiple courses, so creating one more enrollment
select* from attendance order by cId,sect --use where with cookie sent from drop down menu

select cId, enrollment.secId, stuId from enrollment
where cId=--cookies
insert into enrollment values
('21i-0390', 'CS-2002', 'B', '07-04-2023', 'I', 0, 1, 'fall2022' ); --1 row effected, 2 rows effected, 1 row effected
---for drop down
select teaches.cId, secId from enrollment 
inner join teaches on teaches.cId=enrollment.cId 
and teaches.tId='21i-0394'--cookie
select* from enrollment

select stuId from enrollment inner join 
teaches on teaches.cId=enrollment.cId
where enrollment. cId='CS-2001' and enrollment. secId='A'
and teaches.tId='21i-0394'

select* from trail
select* from flexuser

delete from flexuser
where phoneNo=0 and dob='1900-01-01'

alter table trail
alter column activity varchar(100)