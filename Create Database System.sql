CREATE DATABASE BakiMeal
GO
USE BakiMeal

CREATE TABLE MsStaff (
	StaffID CHAR (5) PRIMARY KEY CHECK (StaffID LIKE 'ST[0-9][0-9][0-9]'),
	StaffName VARCHAR(50) NOT NULL CHECK  (LEN (StaffName) > 3),
	StaffAddress VARCHAR(50) NOT NULL,
	StaffGender VARCHAR(10) NOT NULL CHECK (StaffGender LIKE 'Male' OR StaffGender LIKE 'Female'),
	StaffEmail VARCHAR(50) NOT NULL CHECK (StaffEmail LIKE '%@%'),
	StaffPhone VARCHAR(13) NOT NULL CHECK (LEN (StaffPhone)=13),
	StaffSalary INT NOT NULL
);

CREATE TABLE MealPrep(
	MealID CHAR(5) PRIMARY KEY CHECK(MealID LIKE 'PM[0-9][0-9][0-9]'),
	MealPrepName VARCHAR(50) NOT NULL,
	MealExpDate DATE NOT NULL  CHECK (YEAR(MealExpDate)>=2021), 
	MealSalesPrice INT NOT NULL CHECK(MealSalesPrice>50000),
	MealPurchasePrice INT NOT NULL, 
	Stock INT NOT NULL CHECK (Stock > 0)
);

CREATE TABLE MsBranch(
	BranchID CHAR(5) PRIMARY KEY CHECK (BranchID LIKE 'RB[0-9][0-9][0-9]'),
	BranchName VARCHAR(50) NOT NULL CHECK (LEN(BranchName)>5),
	BranchEmail VARCHAR(50) NOT NULL CHECK (BranchEmail LIKE '%@%'),
	BranchPhone VARCHAR(13) NOT NULL CHECK (LEN (BranchPhone)=13),
	BranchAddress VARCHAR(50) NOT NULL
);

CREATE TABLE MsCustomer(
	CustomerID CHAR(5) PRIMARY KEY CHECK (CustomerID LIKE 'CS[0-9][0-9][0-9]'),
	CustomerName VARCHAR(50) NOT NULL CHECK(LEN(CustomerName)>5),
	CustomerGender VARCHAR (10) NOT NULL CHECK(CustomerGender LIKE 'Male' OR CustomerGender LIKE 'Female'), 
	CustomerAddress VARCHAR(50) NOT NULL,
	CustomerPhone VARCHAR(13) CHECK (LEN(CustomerPhone) = 13), 
	CustomerEmail VARCHAR(50) CHECK (CustomerEmail LIKE '%@%')
);

CREATE TABLE PurchaseHeader(
	PurchaseID CHAR (5) PRIMARY KEY CHECK(PurchaseID LIKE 'PC[0-9][0-9][0-9]'),
	PurchaseDate DATE NOT NULL,
	StaffID CHAR(5) NOT NULL FOREIGN KEY REFERENCES MsStaff(StaffID) ON UPDATE CASCADE ON DELETE CASCADE,
	BranchID CHAR(5) FOREIGN KEY REFERENCES MsBranch(BranchID) ON UPDATE CASCADE ON DELETE CASCADE,
)

CREATE TABLE PurchaseDetail(
	PurchaseID CHAR(5) CHECK(PurchaseID LIKE 'PC[0-9][0-9][0-9]') FOREIGN KEY REFERENCES PurchaseHeader(PurchaseID) ON UPDATE CASCADE ON DELETE CASCADE,
	MealID CHAR(5) NOT NULL FOREIGN KEY REFERENCES MealPrep(MealID) ON UPDATE CASCADE ON DELETE CASCADE,
	Quantity INT NOT NULL
)