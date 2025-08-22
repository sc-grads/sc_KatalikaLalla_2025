-- Switch to the database
USE TimesheetDB;
GO

-- Create TeamMembers table
CREATE TABLE TeamMembers (
    TeamMemberID INT IDENTITY(1,1) PRIMARY KEY,
    FullName NVARCHAR(100) NOT NULL,
    Email NVARCHAR(150) NULL,
    Department NVARCHAR(100) NULL
);

-- Create Clients table
CREATE TABLE Clients (
    ClientID INT IDENTITY(1,1) PRIMARY KEY,
    ClientName NVARCHAR(100) NOT NULL
);

-- Create Projects table
CREATE TABLE Projects (
    ProjectID INT IDENTITY(1,1) PRIMARY KEY,
    ProjectName NVARCHAR(100) NOT NULL,
    ClientID INT NOT NULL,
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID)
);

-- Create Timesheets table
CREATE TABLE Timesheets (
    TimesheetID INT IDENTITY(1,1) PRIMARY KEY,
    TeamMemberID INT NOT NULL,
    WorkDate DATE NOT NULL,
    DayOfWeek NVARCHAR(20) NOT NULL,
    ProjectID INT NOT NULL,
    Description NVARCHAR(255) NULL,
    IsBillable BIT NOT NULL,
    Comments NVARCHAR(255) NULL,
    StartTime TIME NOT NULL,
    EndTime TIME NOT NULL,
    HoursWorked DECIMAL(5,2) NOT NULL,
    FOREIGN KEY (TeamMemberID) REFERENCES TeamMembers(TeamMemberID),
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID)
);

-- Create AuditLog table
CREATE TABLE AuditLog (
    AuditID INT IDENTITY(1,1) PRIMARY KEY,
    ActionType NVARCHAR(20),
    TableName NVARCHAR(100),
    RecordID INT,
    ChangedAt DATETIME DEFAULT GETDATE(),
    ChangedBy NVARCHAR(100),
    Description NVARCHAR(500)
);

-- Optional indexing for performance
CREATE INDEX IDX_Timesheets_TeamMemberID ON Timesheets(TeamMemberID);
CREATE INDEX IDX_Timesheets_WorkDate ON Timesheets(WorkDate);
CREATE INDEX IDX_Projects_ClientID ON Projects(ClientID);
