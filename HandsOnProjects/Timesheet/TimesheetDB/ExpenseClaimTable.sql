CREATE TABLE ExpenseClaim (
    ExpenseID INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeID INT FOREIGN KEY REFERENCES Employee(EmployeeID),
    Month VARCHAR(20),
    ExpenseDescription VARCHAR(255),
    Type VARCHAR(50),
    ZARCost DECIMAL(10,2)
);