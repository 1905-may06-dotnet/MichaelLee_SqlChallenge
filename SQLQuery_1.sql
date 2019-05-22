CREATE TABLE Employee (
ID INT NOT NULL,
DeptID INT NOT NULL,
FirstName NVARCHAR (50),
LastName NVARCHAR (50),
SSN INT NOT NULL,
PRIMARY KEY (ID)
)


CREATE TABLE EmpDetails (
ID INT NOT NULL,
EmployeeID INT NOT NULL,
Salary MONEY NOT NULL,
AddressOne NVARCHAR (50),
AddressTwo NVARCHAR (50),
City NVARCHAR (30),
State NVARCHAR (30),
Country NVARCHAR(25),
PRIMARY KEY (EmployeeID),
FOREIGN KEY (ID) REFERENCES Employee(ID)
)

Drop Table Department;

CREATE TABLE Department (
ID INT NOT NULL,
Name VARCHAR(20),
Location VARCHAR(30),
PRIMARY KEY (ID)
)
ALTER TABLE Employee
ADD FOREIGN KEY (DeptID) REFERENCES Department(ID);


INSERT INTO Department ( ID, Name, Location)
VALUES (1, 'WalMart', 'Here');
INSERT INTO Department ( ID, Name, Location)
VALUES (2, 'Target', 'There');
INSERT INTO Department ( ID, Name, Location)
VALUES (3, 'BestBuy', 'Somewhere');
INSERT INTO Department ( ID, Name, Location)
VALUES (4, 'Marketing', 'Nowhere');

SELECT * From Department

INSERT INTO Employee (ID, DeptID, FirstName, LastName, SSN)
VALUES (1, 1,'Craig', 'Smith', 111111111);

INSERT INTO Employee (ID, DeptID, FirstName, LastName, SSN)
VALUES (2, 2,'Tina', 'Smith', 111111112);

INSERT INTO Employee (ID, DeptID, FirstName, LastName, SSN)
VALUES (3, 3,'Craig', 'Smith', 111111113);

INSERT INTO Employee (ID, DeptID, FirstName, LastName, SSN)
VALUES (4, 3,'Bob', 'Sagget', 111111114);

INSERT INTO Employee (ID, DeptID, FirstName, LastName, SSN)
VALUES (5, 2,'Jane', 'Foster', 111111115);

INSERT INTO Employee (ID, DeptID, FirstName, LastName, SSN)
VALUES (6, 4,'Kyle', 'Bagger', 111111116);

INSERT INTO Employee (ID, DeptID, FirstName, LastName, SSN)
VALUES (7, 4,'Buddy', 'Bud', 111111117);



INSERT INTO EmpDetails (ID, EmployeeID, Salary, AddressOne, AddressTwo, City, State, Country)
VALUES (1, 1, 100000.50, '1st St.','Place American', 'Keller', 'TX', 'USA');

INSERT INTO EmpDetails (ID, EmployeeID, Salary, AddressOne, AddressTwo, City, State, Country)
VALUES (2, 2, 10000.50, '2nd Rd.','American Place', 'Dallas', 'TX', 'USA');

INSERT INTO EmpDetails (ID, EmployeeID, Salary, AddressOne, AddressTwo, City, State, Country)
VALUES (3, 3, 160000.50, '3rr Ln.','Not American Place', 'Beijing', 'TX', 'USA');

INSERT INTO EmpDetails (ID, EmployeeID, Salary, AddressOne, AddressTwo, City, State, Country)
VALUES (4, 4, 107000.50, '4th Blvd.','Gross American Place', 'Frisco', 'Maine', 'USA');

INSERT INTO EmpDetails (ID, EmployeeID, Salary, AddressOne, AddressTwo, City, State, Country)
VALUES (5, 5, 10000000.50, '5th Plaza.','Place Area', 'New York', 'NY', 'USA');

INSERT INTO EmpDetails (ID, EmployeeID, Salary, AddressOne, AddressTwo, City, State, Country)
VALUES (6, 6, 1000.50, '6th Rocket.','American Place', 'Frisco', 'Maine', 'USA');

INSERT INTO EmpDetails (ID, EmployeeID, Salary, AddressOne, AddressTwo, City, State, Country)
VALUES (7, 7, 10.50, '7th Burns.','Place Area', 'New York', 'NY', 'USA');

SELECT * FROM Employee;

SELECT * FROM EmpDetails;

SELECT FirstName, LastName, DeptID, [Location]
  FROM [Employee] JOIN Department
    ON [Employee].ID = Department.ID
    WHERE [Location] = 'Marketing'