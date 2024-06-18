CREATE DATABASE EmployeeManagement;
USE EmployeeManagement;

-- Create Department table
CREATE TABLE Department (
    DeptID INT AUTO_INCREMENT PRIMARY KEY,
    DeptName VARCHAR(100) NOT NULL
);

-- Create JobTitle table
CREATE TABLE JobTitle (
    JobID INT AUTO_INCREMENT PRIMARY KEY,
    JobName VARCHAR(100) NOT NULL
);

-- Create Employee table
CREATE TABLE Employee (
    EmpID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Address VARCHAR(255),
    Phone VARCHAR(15),
    DeptID INT,
    JobID INT,
    FOREIGN KEY (DeptID) REFERENCES Department(DeptID),
    FOREIGN KEY (JobID) REFERENCES JobTitle(JobID)
);

-- Create Salary table
CREATE TABLE Salary (
    SalaryID INT AUTO_INCREMENT PRIMARY KEY,
    EmpID INT,
    Amount DECIMAL(10, 2) NOT NULL,
    EffectiveDate DATE,
    FOREIGN KEY (EmpID) REFERENCES Employee(EmpID)
);

-- Create Attendance table
CREATE TABLE Attendance (
    AttendanceID INT AUTO_INCREMENT PRIMARY KEY,
    EmpID INT,
    Date DATE NOT NULL,
    Status VARCHAR(10) CHECK (Status IN ('Present', 'Absent', 'Leave')),
    FOREIGN KEY (EmpID) REFERENCES Employee(EmpID)
);

INSERT INTO Department (DeptName) 
VALUES 
('HR'), 
('Finance'), 
('Engineering'), 
('Sales'), 
('Marketing'), 
('Operations'), 
('IT'), 
('Customer Service');

INSERT INTO JobTitle (JobName) 
VALUES 
('Manager'), 
('Developer'), 
('Analyst'), 
('Salesperson'), 
('Marketer'), 
('Operator'), 
('IT Specialist'), 
('Support Representative');

INSERT INTO Employee (FirstName, LastName, Address, Phone, DeptID, JobID) 
VALUES 
('John', 'Doe', '123 Elm St', '555-1234', 1, 1),
('Jane', 'Smith', '456 Oak St', '555-5678', 2, 2),
('Alice', 'Johnson', '789 Pine St', '555-9876', 3, 3),
('Bob', 'Brown', '321 Maple St', '555-6543', 4, 4),
('Charlie', 'Davis', '111 Birch St', '555-2222', 5, 5),
('Eve', 'Taylor', '222 Cedar St', '555-3333', 6, 6),
('Frank', 'Wilson', '333 Pine St', '555-4444', 7, 7),
('Grace', 'Evans', '444 Maple St', '555-5555', 8, 8),
('Hank', 'Green', '555 Elm St', '555-6666', 1, 2),
('Ivy', 'White', '666 Oak St', '555-7777', 2, 3),
('Jack', 'Black', '777 Pine St', '555-8888', 3, 4),
('Kelly', 'Blue', '888 Maple St', '555-9999', 4, 1),
('Liam', 'Brown', '999 Birch St', '555-1010', 5, 2),
('Mia', 'Davis', '111 Pine St', '555-1111', 6, 3),
('Noah', 'Wilson', '222 Maple St', '555-1212', 7, 4),
('Olivia', 'Evans', '333 Cedar St', '555-1313', 8, 1),
('Paul', 'White', '444 Birch St', '555-1414', 1, 2),
('Quinn', 'Green', '555 Cedar St', '555-1515', 2, 3),
('Ryan', 'Black', '666 Pine St', '555-1616', 3, 4),
('Sophia', 'Blue', '777 Maple St', '555-1717', 4, 1);

INSERT INTO Salary (EmpID, Amount, EffectiveDate) 
VALUES 
(1, 60000.00, '2023-01-01'),
(2, 55000.00, '2023-01-01'),
(3, 70000.00, '2023-01-01'),
(4, 50000.00, '2023-01-01'),
(5, 80000.00, '2023-01-01'),
(6, 75000.00, '2023-01-01'),
(7, 72000.00, '2023-01-01'),
(8, 68000.00, '2023-01-01'),
(9, 54000.00, '2023-01-01'),
(10, 58000.00, '2023-01-01'),
(11, 66000.00, '2023-01-01'),
(12, 62000.00, '2023-01-01'),
(13, 64000.00, '2023-01-01'),
(14, 73000.00, '2023-01-01'),
(15, 78000.00, '2023-01-01'),
(16, 69000.00, '2023-01-01'),
(17, 53000.00, '2023-01-01'),
(18, 56000.00, '2023-01-01'),
(19, 61000.00, '2023-01-01'),
(20, 67000.00, '2023-01-01');

INSERT INTO Attendance (EmpID, Date, Status) 
VALUES 
(1, '2023-06-01', 'Present'),
(1, '2023-06-02', 'Absent'),
(2, '2023-06-01', 'Present'),
(2, '2023-06-02', 'Present'),
(3, '2023-06-01', 'Leave'),
(3, '2023-06-02', 'Present'),
(4, '2023-06-01', 'Present'),
(4, '2023-06-02', 'Present'),
(5, '2023-06-01', 'Present'),
(5, '2023-06-02', 'Absent'),
(6, '2023-06-01', 'Present'),
(6, '2023-06-02', 'Present'),
(7, '2023-06-01', 'Leave'),
(7, '2023-06-02', 'Present'),
(8, '2023-06-01', 'Present'),
(8, '2023-06-02', 'Present'),
(9, '2023-06-01', 'Present'),
(9, '2023-06-02', 'Absent'),
(10, '2023-06-01', 'Present'),
(10, '2023-06-02', 'Present'),
(11, '2023-06-01', 'Leave'),
(11, '2023-06-02', 'Present'),
(12, '2023-06-01', 'Present'),
(12, '2023-06-02', 'Present'),
(13, '2023-06-01', 'Present'),
(13, '2023-06-02', 'Absent'),
(14, '2023-06-01', 'Present'),
(14, '2023-06-02', 'Present'),
(15, '2023-06-01', 'Leave'),
(15, '2023-06-02', 'Present'),
(16, '2023-06-01', 'Present'),
(16, '2023-06-02', 'Present'),
(17, '2023-06-01', 'Present'),
(17, '2023-06-02', 'Absent'),
(18, '2023-06-01', 'Present'),
(18, '2023-06-02', 'Present'),
(19, '2023-06-01', 'Leave'),
(19, '2023-06-02', 'Present'),
(20, '2023-06-01', 'Present'),
(20, '2023-06-02', 'Present');

select * from Attendance;


