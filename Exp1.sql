SQL> select*from Students;

no rows selected

SQL> Create table Enrollments (StudentID int REFERENCES Student(StudentID), CourseID int REFERENCES Courses(CourseID));
Create table Enrollments (StudentID int REFERENCES Student(StudentID), CourseID int REFERENCES Courses(CourseID))
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object 


SQL> Create table Enrollments (StudentID int REFERENCES Student(StudentID), CourseID int REFERENCES Courses(CourseID)); /
  2  /
Create table Enrollments (StudentID int REFERENCES Student(StudentID), CourseID int REFERENCES Courses(CourseID)); /
                                                                                                                 *
ERROR at line 1:
ORA-00911: invalid character 


SQL> drop table Enrollments;

Table dropped.

SQL> Create table Enrollments (StudentID int REFERENCES Student(StudentID), CourseID int REFERENCES Courses(CourseID));

Table created.

SQL> Insert into Students values(1,'Alice', 20);

1 row created.

SQL> Insert into Students values(2,'bob', 22);

1 row created.

SQL> Insert into Students values(3,'charlie', 21);

1 row created.

SQL> Insert into Students values(4,'david', 19);

1 row created.

SQL> Insert into Courses values (101, 'Database Management');
Insert into Courses values (101, 'Database Management')
*
ERROR at line 1:
ORA-00001: unique constraint (SYSTEM.SYS_C004024) violated 


SQL> Insert into Coursess values (101, 'Database Management');

1 row created.

SQL> Insert into Coursess values (102, 'algorithms');

1 row created.

SQL> Insert into Coursess values (103, 'web development');

1 row created.

SQL> Insert into Enrollments values(1,101);

1 row created.

SQL> Insert into Enrollments values(2,102);

1 row created.

SQL> Insert into Enrollments values(3,103);

1 row created.

SQL> Insert into Enrollments values(4,104);
Insert into Enrollments values(4,104)
*
ERROR at line 1:
ORA-02291: integrity constraint (SYSTEM.SYS_C004066) violated - parent key not 
found 


SQL> SELECT * FROM Student;

 STUDENTID NAME                                  AGE                            
---------- ------------------------------ ----------                            
         1 Alice                                  20                            
         3 gugan                                  69                            
         2 kadir                                  20                            

SQL> SELECT * FROM Students;

 STUDENTID NAME                                  AGE                            
---------- ------------------------------ ----------                            
         1 Alice                                  20                            
         2 bob                                    22                            
         3 charlie                                21                            
         4 david                                  19                            

SQL> SELECT Name, Age FROM Students WHERE Age > 20;

NAME                                  AGE                                       
------------------------------ ----------                                       
bob                                    22                                       
charlie                                21                                       

SQL> SELECT Name FROM Student WHERE StudentID IN (SELECT StudentID FROM
  2  SELECT Name FROM Students WHERE StudentID IN (SELECT StudentID FROM
  3  Enrollments WHERE CourseID = (SELECT CourseID FROM Courses WHERE
  4  CourseName = 'Database Management'));
SELECT Name FROM Students WHERE StudentID IN (SELECT StudentID FROM
*
ERROR at line 2:
ORA-00903: invalid table name 


SQL> SELECT Name FROM Students WHERE StudentID IN (SELECT StudentID FROM
  2  Enrollments WHERE CourseID = (SELECT CourseID FROM Coursess WHERE
  3  CourseName = 'Database Management'));

NAME                                                                            
------------------------------                                                  
Alice                                                                           

SQL> SELECT CourseID, CourseName FROM Courses WHERE CourseID IN ( SELECT
  2  CourseID FROM Enrollments GROUP BY CourseID HAVING COUNT(*) > 1 );

no rows selected

SQL> SELECT CourseID, CourseName FROM Coursess WHERE CourseID IN ( SELECT
  2  CourseID FROM Enrollments GROUP BY CourseID HAVING COUNT(*) > 1 );

no rows selected

SQL> UPDATE Enrollments SET CourseID=103 WHERE StudentID=4;

0 rows updated.

SQL> UPDATE Enrollments SET CourseID=103 WHERE StudentID=2;

1 row updated.

SQL> SELECT CourseID, CourseName FROM Coursess WHERE CourseID IN ( SELECT CourseID FROM Enrollments GROUP BY CourseID HAVING COUNT(*) > 1 );

  COURSEID COURSENAME                                                           
---------- --------------------                                                 
       103 web development                                                      

SQL> SELECT AVG(Age) AS AverageAge FROM Student;

AVERAGEAGE                                                                      
----------                                                                      
36.3333333                                                                      

SQL> SELECT Name, Age FROM Student WHERE Age > (SELECT AVG(Age) FROM
  2  Student);

NAME                                  AGE                                       
------------------------------ ----------                                       
gugan                                  69                                       

SQL> SELECT Name, Age FROM Students WHERE Age > (SELECT AVG(Age) FROM
  2  Students);

NAME                                  AGE                                       
------------------------------ ----------                                       
bob                                    22                                       
charlie                                21                                       

SQL> SPOOL OFF;
