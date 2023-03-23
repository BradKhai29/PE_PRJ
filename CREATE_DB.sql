CREATE DATABASE PE_PRJ301_DE170644
GO

USE PE_PRJ301_DE170644
GO

CREATE TABLE Course
(
    id VARCHAR(20) UNIQUE NOT NULL,
    courseName NVARCHAR(50) NOT NULL,
    credit INT NOT NULL,
    CONSTRAINT course_pk PRIMARY KEY (id),
)
GO

CREATE TABLE CoursePrerequisite
(
    id VARCHAR(20) NOT NULL,
    preID VARCHAR(20) NOT NULL,
    CONSTRAINT pre_pk PRIMARY KEY (id, preID),
)
GO

INSERT INTO Course (id, courseName, credit)
VALUES 
    ('PRJ301', N'Desktop Java Application', 3),
    ('PRO192', N'Object-Oriented Programming', 3),
    ('PRN211', N'Platform Application Programming With .NET', 3),
    ('SWR302', N'Software Requirement', 3),
    ('SWP391', N'Software development project', 3)
GO

INSERT INTO CoursePrerequisite (id, preID)
VALUES
    ('PRJ301', 'DBI202'),
    ('PRO192', 'PRF192'),
    ('PRN211', 'PRN211'),
    ('SWR302', 'SWE201c'),
    ('SWP391', 'PRJ301')
GO