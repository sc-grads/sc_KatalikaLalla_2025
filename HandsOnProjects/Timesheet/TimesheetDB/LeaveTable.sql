CREATE TABLE Leave (
    LeaveID INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeID INT FOREIGN KEY REFERENCES Employee(EmployeeID),
    TypeOfLeave VARCHAR(50),
    StartDate DATE,
    EndDate DATE,
    NumberOfDays INT,
    ApprovalObtained BIT,
    SickNote VARCHAR(255)
);