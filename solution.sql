CREATE DATABASE CompanyDB;
USE CompanyDB;

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50)
);

CREATE TABLE EmployeeLog (
    Message VARCHAR(100)
);

DELIMITER //

CREATE TRIGGER AfterEmployeeInsert
AFTER INSERT ON Employee
FOR EACH ROW
BEGIN
    INSERT INTO EmployeeLog
    VALUES ('New employee record inserted successfully');
END //

DELIMITER ;

INSERT INTO Employee
VALUES (101, 'Arun');

SELECT * FROM Employee;

SELECT * FROM EmployeeLog;
