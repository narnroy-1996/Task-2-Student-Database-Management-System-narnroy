
-- 1aCreate a database named "student_database."
create database student_database;
use student_database;
-- 1bCreate a table called " student_table " with the following columns: Student_id (integer),Stu_name (text), Department (text), email_id (text ),Phone_no (numeric), Address (text),Date_of_birth (date), Gender (text), Major (text), GPA (numeric),Grade (text) should be A,B,C

CREATE TABLE student_table (
    student_id INT PRIMARY KEY,
    stu_name VARCHAR(50) NOT NULL,
    department VARCHAR(50) NOT NULL,
    email_id VARCHAR(50) ,
    phone_no VARCHAR(15),
    address VARCHAR(200),
    Date_of_birth DATE,
    Gender ENUM('M', 'F', 'Other'),
    Major VARCHAR(50),
    GPA DECIMAL(3,2),
    Grade VARCHAR(1)
);


-- 2)Insert 10 sample records into the "student_table" using INSERT command

INSERT INTO student_table VALUES
(1001, 'Virat Kohli', 'English', 'kolhiking@email.com', '9330349092', '34 JJ road', '2003-12-01', 'M', 'English Literature', 7.90, 'B'),
(1002, 'Shubham Parui', 'Physics', 'paruisubam@email.com', '8497412960', '65 Camac street', '2002-12-25', 'M', 'Applied Physics', 8.30, 'B'),
(1003, 'Sreeparna Ghosh', 'Mathematics', 'troyee_ghosh@email.com', '8907561234', '23 muhholand drive', '2002-04-18', 'F', 'Statistics', 2.67, 'F'),
(1004, 'Tanmoy Bose', 'Business', 'bosemoy@email.com', '9830661690', '904 gulepara road', '2001-05-27', 'M', 'Human Resource', 4.56, 'F'),
(1005, 'Bidipta Chatterjee', 'Physics', 'chatbidipta@email.com', '8607512969', '44 pendaguda lane', '2003-03-10', 'Other', 'Applied Physics', 6.80, 'C'),
(1006, 'Bryan Adams', 'Psychology', 'adamsbryan@email.com', '9784170455', '678 revolutionary road', '2001-11-24', 'M', 'Criminal Psychology', 5.8, 'D'),
(1007, 'Bernie Sanders', 'Psychology', 'sandebarnie@email.com', '9080345671', '22 jump street', '2002-04-18', 'Other', 'Clinical Psychology', 9.20, 'A'),
(1008, 'Tulsi Shaw', 'Mathematics', 'shawsitul@email.com', '9034567890', '67 moniparna apartment', '2001-11-03', 'M', 'Calculus', 7.27, 'B'),
(1009, 'Bill gates', 'Business', 'dollygates@outlook.com', '8790512969', '123 posabro road', '2001-06-11', 'M', 'Marketing', 9.84 , 'A'),
(1010, 'Anushka Sharma', 'Physics', 'sanusk@email.com', '9930340929', '129 b unique park', '2003-07-02', 'F', 'Particle Physics', 8.79, 'A');


-- 3) Student Information Retrieval
select * from student_table 
order by Grade asc;##Ordering asc to make sure grades are sorted Higher>lower



-- 4)Implement a query to retrieve information about all male students from the "student_table"
select * from student_table 
where gender = 'M';



-- 5)Create a query to fetch the details of students who have a GPA less than 5.0 from the "student_table"
select * from student_table 
where GPA < 5.0;


-- 6)Write an update statement to modify the email and grade of a student with a specific ID in the "student_table"
update student_table 
set email_id = 'sharmajinuska@gmail.com', Grade = 'B', GPA=8.30 
where student_id = 1010;

select * from student_table 
where student_id = 1010;

-- 7)Develop a query to retrieve the names and ages of all students who have a grade of "B" from the "student_table"
select stu_name, TIMESTAMPDIFF(year, date_of_birth, curdate()) as age
from student_table 
where grade = 'B';

-- 8)Create a query to group the "student_table" by the "Department" and "Gender" columns and calculate the average GPA for each combination
select department,gender,round(avg(GPA),2) as GPA_average
from student_table
group by Department,Gender
order by Department,Gender;

-- 9Rename the "student_table" to "student_info" using the appropriate SQL statement
Rename table student_table to student_info;
select * from student_info;


-- 10)Write a query to retrieve the name of the student with the highest GPA from the "student_info" table
select stu_name from student_info 
where GPA = (select max(GPA) from student_info);








