create database flex
use flex

create table flexuser (
id varchar(10) primary key not null,
username varchar(50) not null,
firstName varchar(50),
lastName varchar(50) not null,
password varchar(20) not null,
role varchar(10) not null,
dob date,
gender varchar(10),
nationality varchar(20),
phoneNo int
);

--go
--BULK INSERT flexuser
--FROM 'C:\Users\Vaneeza Ahmad\source\repos\DB-project-flex-student-management\DB-project-flex-student-management\user.csv'
--WITH
--(
--    FIELDTERMINATOR = ',',
--    ROWTERMINATOR = '\n',
--    FIRSTROW = 2
--);
--go

--BULK INSERT flexuser
--FROM 'C:\Users\Vaneeza Ahmad\source\repos\DB-project-flex-student-management\DB-project-flex-student-management\user.csv'
--WITH (
--   FIELDTERMINATOR = ',',
--   ROWTERMINATOR = '\n',
--   FIRSTROW = 2,
--   TABLOCK,
--   FORMATFILE = 'C:\Users\Vaneeza Ahmad\source\repos\DB-project-flex-student-management\DB-project-flex-student-management\format.xml'
--);

--UPDATE flexuser SET dob = CONVERT(DATE, dob, 101);

--select* from flexuser

--GRANT BULK INSERT TO Vaneeza_Ahmad;
--go
--GRANT BULK INSERT ON DATABASE::[flex] TO '[Vaneeza Ahmad]';
--go

create table course(
code varchar(10) primary key not null,
cname varchar(30),
ctype varchar(10),
crdHrs int,
);

create table offers(
cId varchar(10) foreign key references course(code)
on delete cascade
on update cascade,
adId varchar(10) foreign key references flexuser(id),
regCount int default 0,
--CONSTRAINT fk_offers_flexuser_role CHECK ( adId IN (SELECT id FROM flexuser WHERE role = 'Admin')),
);

create table sections(
secid varchar(5) primary key not null,
scourse varchar(10) foreign key references course(code)
on delete cascade
on update cascade,
numStudents int check (numStudents>=1 and numStudents<=50)
);

create table coursehaveSec(
secId varchar(5) foreign key references sections(secid)
on delete cascade
on update cascade,
code varchar(10) foreign key references course(code)
on delete no action
on update no action,
primary key (code,secId) 
);

create table teaches(
cId varchar(10) foreign key references course(code)
on delete cascade
on update cascade,
tId varchar(10) foreign key references flexuser(id),
--CONSTRAINT CHK_teacher_role CHECK (EXISTS (SELECT 1 FROM flexuser WHERE id = tId AND role = 'Faculty')),
numCourses integer check (numCourses <=3),
primary key(tId, cId),
year integer,
semester varchar(10)
--CONSTRAINT fk_teaches_flexuser_role CHECK ( tId IN (SELECT id FROM flexuser WHERE role = 'Faculty'))
);

create table enrollment(
stuId varchar(10) foreign key references flexuser(id),
cId varchar(10) foreign key references course(code)
on delete cascade
on update cascade,
secId varchar(5) foreign key references sections(secid)
on delete no action
on update no action,
enrollmentDate date,
grade char(2),
points float,
numCourses integer check (numCourses <=6),   --one student can enrol in max 6 courses
primary key(stuId, cId),            --one student can enrol in a course once
--CONSTRAINT fk_enrollment_flexuser_role CHECK (stuId IN (SELECT id FROM flexuser WHERE role = 'Student')),
--CONSTRAINT ck_enrollment_max_courses CHECK ((SELECT COUNT(*) FROM enrollment WHERE stuId = enrollment.stuId) <= 6)
);

create table attendance(
attDate date,
studId varchar(10) foreign key references flexuser(id),
tId varchar(10) foreign key references flexuser(id),
cId varchar(10) foreign key references course(code),
sect varchar(5) foreign key references sections(secid),
foreign key(studId, cId) references enrollment(stuId, cId),
status varchar(10), --present, late
foreign key(tId, cId) references teaches(tId, cId),
primary key (studId, sect, attDate)
--CONSTRAINT fk_attendance_flexuser_role CHECK (studId IN (SELECT id FROM flexuser WHERE role = 'Student')),
--CONSTRAINT fk_attendance_flexuser_role CHECK (tId IN (SELECT id FROM flexuser WHERE role = 'Faculty'))
);

create table evaluation(
evalType varchar(20),
weightage integer,
totalMarks integer,
cId varchar(10) foreign key references course(code)
on delete cascade
on update cascade,
primary key(cId, evalType)
);

create table manageMarks(
tId varchar(10) foreign key references flexuser(id),
cId varchar(10) foreign key references course(code),
stId varchar(10) foreign key references flexuser(id),
evalType varchar(20),
foreign key (cId, evalType) references evaluation(cId,evalType),
foreign key(stId, cId) references enrollment(stuId, cId)
on delete no action
on update no action,
foreign key(tId, cId) references teaches(tId, cId)
on delete no action
on update no action,
obtMarks integer
--CONSTRAINT fk_manageMarks_flexuser_role CHECK (stId IN (SELECT id FROM flexuser WHERE role = 'Student')),
--CONSTRAINT fk_manageMarks_flexuser_role CHECK (tId IN (SELECT id FROM flexuser WHERE role = 'Faculty'))
);

create table feedback(
tId varchar(10) foreign key references flexuser(id),
cId varchar(10) foreign key references course(code),
stId varchar(10) foreign key references flexuser(id),
foreign key(stId, cId) references enrollment(stuId, cId),
foreign key(tId, cId) references teaches(tId, cId),
comments varchar(50),
fdate date,
metric integer, 
primary key(stId, cId, tId)
--CONSTRAINT fk_feedback_flexuser_role CHECK (stId IN (SELECT id FROM flexuser WHERE role = 'Student')),
--CONSTRAINT fk_feedback_flexuser_role CHECK (tId IN (SELECT id FROM flexuser WHERE role = 'Faculty'))
);

CREATE TABLE registration_request (
regId INT PRIMARY KEY,
stuId varchar(10) foreign key references flexuser(id),
cId varchar(10) foreign key references course(code)
on delete cascade
on update cascade,
registration_date DATE,
requestStatus varchar(10) DEFAULT 'Pending',
--CONSTRAINT fk_student_requests_flexuser_role CHECK (stuId IN (SELECT id FROM flexuser WHERE role = 'Student'))
);

select* from dbo.flexuser

insert into flexuser values
('21i-0390', 'vaneeza.ahmad', 'vaneeza', 'ahmad', '1234', 'student', '01-01-2004', 'female', 'pakistani', 1234567);
insert into flexuser values
('21i-0391', 'rabail.nasir', 'rabail', 'nasir', '1235', 'student', '05-04-2003', 'female', 'pakistani', 1234567);
insert into flexuser values
('21i-0392', 'salar.bakht', 'salar', 'bakht', '1236', 'student', '01-03-2004', 'male', 'pakistani', 1234567);
insert into flexuser values
('21i-0393', 'amir.rehman', 'amir', 'rehman', '1237', 'admin', '01-01-1989', 'male', 'pakistani', 1234567);
insert into flexuser values
('21i-0394', 'adnan.tariq', 'adnan', 'tariq', '1238', 'faculty', '01-01-1989', 'male', 'pakistani', 1234567);

select* from course

insert into course values
('CS-2001', 'Programming Fundamentals', 'core', 3);
insert into course values
('CS-2002', 'Object Oreinted Programming', 'core', 3);
insert into course values
('CS-2003', 'Data structures', 'core', 4);
insert into course values
('EE-2001', 'Applied Physics', 'core', 3);
insert into course values
('MM-2001', 'Marketing Management', 'elective', 2);

select* from coursehaveSec

select* from sections
insert into sections values
('A', 'CS-2001', 5);
insert into sections values
('B', 'CS-2002', 5);
insert into sections values
('C', 'CS-2003', 5);
insert into sections values
('D', 'EE-2001', 5);
insert into sections values
('E', 'MM-2001', 5);

insert into coursehaveSec values
('A', 'CS-2001');
insert into coursehaveSec values
('B', 'CS-2002');
insert into coursehaveSec values
('C', 'CS-2003');
insert into coursehaveSec values
('D', 'EE-2001');
insert into coursehaveSec values
('E', 'MM-2001');


select* from teaches

insert into teaches values
('CS-2001', '21i-0394', 3, 2022, 'fall2022');
insert into teaches values
('CS-2002', '21i-0394', 3, 2023, 'fall2023');
insert into teaches values
('CS-2003', '21i-0394', 3, 2023, 'fall2023');
