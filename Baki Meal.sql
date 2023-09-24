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

--BEGIN TRAN
INSERT INTO [MsStaff] VALUES
('ST001', 'Fathya Putri Yasmina', 'Jl. Jalur Sutera Barat, Alam Sutera', 'Female', 'fathyayasmina@gmail.com', '0813456796901', '15000000' ),
('ST002', 'Yogi Pratama Hutagalung', 'Jl. Karya Cipta, Medan Johor', 'Male', 'yogipratamahutagalung@gmail.com', '0813457823421', '10000000' ),
('ST003', 'Yuan Stefanus Tampubolon', 'Jl. Sarulla, Siantar selatan', 'Male', 'yuantampubolon@hotmail.com', '0813457682341', '12000000' ),
('ST004', 'Jessica Chang', 'Jl. Kelimutu, Kelapa Gading', 'Female', 'jessicachang@yahoo.com', '0852346123417', '3700000' ),
('ST005', 'Delwyna Cia Hutagalung', 'Jl. Jaka tingkir, Banyuwangi Timur', 'Female', 'delwynacia@hotmail.com', '0890489732411', '15000000' ),
('ST006', 'Rich Hugo Hutagalung', 'Jl. Sultan Mahmud Syah, Lokseumawe Barat', 'Male', 'richhugo@yahoo.com', '0852758711663', '13000000' ),
('ST007', 'Dean Stanley Yoyada', 'Jl. Merdeka, Pasuruan Barat', 'Male', 'deanstanleyyoyada@hotmail.com', '0897675672314', '11000000' ),
('ST008', 'Melvina Koswari', 'Jl. T.B. Simatupang, Medan Sunggal', 'Female', 'melvinakoswari@gmail.com', '0813456098238', '2000000' ),
('ST009', 'Dedy Evander Salim', 'Jl. Karya Jati, Bekasi Timur', 'Male', 'dedyevander@yahoo.com', '0896534872198', '3000000' ),
('ST010', 'Tina Mike', 'Jl. Benda barat, Tangerang Selatan', 'Female', 'tinamike@gmail.com', '0824983322098', '4700000' );

--ROLLBACK

CREATE TABLE MealPrep(
	MealID CHAR(5) PRIMARY KEY CHECK(MealID LIKE 'PM[0-9][0-9][0-9]'),
	MealPrepName VARCHAR(50) NOT NULL,
	MealExpDate DATE NOT NULL  CHECK (YEAR(MealExpDate)>=2021), 
	MealSalesPrice INT NOT NULL CHECK(MealSalesPrice>50000),
	MealPurchasePrice INT NOT NULL, 
	Stock INT NOT NULL CHECK (Stock > 0)
);

INSERT INTO [MealPrep] VALUES 
('PM001', 'Ayam Kalasan', '2022-08-15', '150000', '100000', '100'),
('PM002', 'Opor Ayam', '2023-01-01', '100000', '80000', '35'),
('PM003', 'Kambing Guling', '2021-09-01', '300000', '200000', '20'),
('PM004', 'Sate Maranggi', '2022-10-01', '150000', '80000', '50'),
('PM005', 'Kroket Sapi', '2023-01-15', '650000', '55000', '120'),
('PM006', 'Sate Lilit', '2021-12-25', '100000', '75000', '100'),
('PM007', 'Tempe Bacem', '2023-08-01', '70000', '65000', '185'),
('PM008', 'Arsik Ikan', '2022-03-30', '100000', '85000', '55'),
('PM009', 'Ayam Gulai', '2022-05-01', '100000', '85000', '85'),
('PM010', 'Rendang Sapi', '2024-01-01', '500000', '120000', '35');


CREATE TABLE MsBranch(
	BranchID CHAR(5) PRIMARY KEY CHECK (BranchID LIKE 'RB[0-9][0-9][0-9]'),
	BranchName VARCHAR(50) NOT NULL CHECK (LEN(BranchName)>5),
	BranchEmail VARCHAR(50) NOT NULL CHECK (BranchEmail LIKE '%@%'),
	BranchPhone VARCHAR(13) NOT NULL CHECK (LEN (BranchPhone)=13),
	BranchAddress VARCHAR(50) NOT NULL
);

INSERT INTO [MsBranch] VALUES
('RB001', 'BakiMeal Bandung', 'bakimealbdg@gmail.com', '0812398475621', 'Jl. Dr. Sutomo, Dwikora'),
('RB002', 'BakiMeal Jakarta Barat', 'bakimealjakbar@gmail.com', '0815673841023', 'Jl. Cipto Mangunkusumo, Proklamasi'),
('RB003', 'BakiMeal Kota Tangerang', 'bakimealtangerang@gmail.com', '0819028746211', 'Jl. Mangga, Tangerang'),
('RB004', 'BakiMeal Bekasi', 'bakimealbekasi@gmail.com', '0811189300921', 'Jl. Martapura, Merdeka'),
('RB005', 'BakiMeal Surabaya', 'bakimealsby@gmail.com', '0845768700993', 'Jl. D.I Panjaitan, Sitalasari'),
('RB006', 'BakiMeal Palembang', 'bakimealplbg@gmail.com', '0813703970490', 'Jl. Bandung, Dwikora'),
('RB007', 'BakiMeal Tangerang Selatan', 'bakimealtangsel@gmail.com', '0881982345097', 'Jl. Pegangsaan Barat, Tangerang Selatan'),
('RB008', 'BakiMeal Yogyakarta', 'bakimealjogja@gmail.com', '0862099854432', 'Jl. M.H. Thamrin, Pantjoran'),
('RB009', 'BakiMeal Jakarta Selatan', 'bakimealjaksel@gmail.com', '0821877854644', 'Jl. Kapitan Pattimura, Proklamasi'),
('RB010', 'BakiMeal Jakarta Pusat', 'bakimealjakpus@gmail.com', '0852849382547', 'Jl. R.A. Kartini, Dwikora')


CREATE TABLE MsCustomer(
	CustomerID CHAR(5) PRIMARY KEY CHECK (CustomerID LIKE 'CS[0-9][0-9][0-9]'),
	CustomerName VARCHAR(50) NOT NULL CHECK(LEN(CustomerName)>5),
	CustomerGender VARCHAR (10) NOT NULL CHECK(CustomerGender LIKE 'Male' OR CustomerGender LIKE 'Female'), 
	CustomerAddress VARCHAR(50) NOT NULL,
	CustomerPhone VARCHAR(13) CHECK (LEN(CustomerPhone) = 13), 
	CustomerEmail VARCHAR(50) CHECK (CustomerEmail LIKE '%@%')
);

INSERT INTO [MsCustomer] VALUES
('CS001', 'Windy Mestika Kumalasari', 'Female', 'Jl. I.L. Nommensen, Proklamasi', '0812674532451', 'windykumalasari@gmail.com'),
('CS002', 'Kevin Wijaya', 'Male', 'Jl. Persatuan, Mekarsari', '0889789235461', 'kevinwijadja@gmail.com'),
('CS003', 'Chandra Caniago', 'Male', 'Jl. Antasari, Tirtacipta', '0856723465238', 'chandracan66@gmail.com'),
('CS004', 'Rahel Wahani', 'Female', 'Jl. Sarinembah, Kutabaru', '0890893475869', 'wahanirahel90@gmail.com'),
('CS005', 'Ika Maria Leru', 'Female', 'Jl. Fatmawati, Proklamasi', '0850988764879', 'mariaika@gmail.com'),
('CS006', 'Ashton Lazuardy', 'Male', 'Jl. Surabaya, Persatuan', '0877645635476', 'ashtonlazuardy@gmail.com'),
('CS007', 'Tessalonika Sinaga', 'Female', 'Jl. Samosir, Toba', '0812674532451', 'tessasinagabonor@gmail.com'),
('CS008', 'Chelsea Salim', 'Female', 'Jl. Keramatjati, Makasar', '0834569867453', 'chelsea45@gmail.com'),
('CS009', 'Herlin Hutagalung', 'Female', 'Jl. Penyerang, Persatuan', '0812668798843', 'herlinhutagalung@gmail.com'),
('CS010', 'Bilqis Syah Alam', 'Female', 'Jl. Mawar Merah, Kebun Sayur', '0898876432451', 'bilqissyah@gmail.com');

--SELECT * FROM MsCustomer

CREATE TABLE PurchaseHeader(
	PurchaseID CHAR (5) PRIMARY KEY CHECK(PurchaseID LIKE 'PC[0-9][0-9][0-9]'),
	PurchaseDate DATE NOT NULL,
	StaffID CHAR(5) NOT NULL FOREIGN KEY REFERENCES MsStaff(StaffID) ON UPDATE CASCADE ON DELETE CASCADE,
	BranchID CHAR(5) FOREIGN KEY REFERENCES MsBranch(BranchID) ON UPDATE CASCADE ON DELETE CASCADE,
)

INSERT INTO [PurchaseHeader] VALUES
('PC001', '2022-08-15', 'ST001', 'RB007'),
('PC002', '2022-09-19', 'ST008', 'RB004'),
('PC003', '2022-10-22', 'ST003', 'RB005'),
('PC004', '2022-01-10', 'ST005', 'RB004'),
('PC005', '2022-03-29', 'ST007', 'RB002'),
('PC006', '2022-02-23', 'ST004', 'RB001'),
('PC007', '2022-07-21', 'ST002', 'RB003'),
('PC008', '2022-11-13', 'ST002', 'RB003'),
('PC009', '2022-12-23', 'ST008', 'RB008'),
('PC010', '2022-09-19', 'ST010', 'RB009'),
('PC011', '2022-09-30', 'ST009', 'RB010'),
('PC012', '2022-09-19', 'ST006', 'RB007'),
('PC013', '2022-11-22', 'ST003', 'RB005'),
('PC014', '2022-12-01', 'ST007', 'RB008'),
('PC015', '2022-10-19', 'ST009', 'RB002')

CREATE TABLE PurchaseDetail(
	PurchaseID CHAR(5) CHECK(PurchaseID LIKE 'PC[0-9][0-9][0-9]') FOREIGN KEY REFERENCES PurchaseHeader(PurchaseID) ON UPDATE CASCADE ON DELETE CASCADE,
	MealID CHAR(5) NOT NULL FOREIGN KEY REFERENCES MealPrep(MealID) ON UPDATE CASCADE ON DELETE CASCADE,
	Quantity INT NOT NULL
)

INSERT INTO [PurchaseDetail] VALUES
('PC001', 'PM001', '13'),
('PC001', 'PM002', '4'),
('PC001', 'PM005', '1'),
('PC002', 'PM006', '20'),
('PC002', 'PM004', '13'),
('PC002', 'PM003', '24'),
('PC003', 'PM008', '8'),
('PC003', 'PM009', '5'),
('PC004', 'PM010', '2'),
('PC004', 'PM001', '3'),
('PC005', 'PM005', '1'),
('PC005', 'PM009', '8'),
('PC006', 'PM003', '10'),
('PC007', 'PM007', '13'),
('PC007', 'PM009', '2'),
('PC008', 'PM010', '2'),
('PC009', 'PM006', '11'),
('PC009', 'PM002', '8'),
('PC010', 'PM003', '19'),
('PC011', 'PM008', '2'),
('PC011', 'PM007', '5'),
('PC012', 'PM001', '7'),
('PC013', 'PM002', '14'),
('PC014', 'PM009', '10'),
('PC014', 'PM005', '3'),
('PC015', 'PM002', '10'),
('PC015', 'PM008', '7')


CREATE TABLE SalesHeader(
	SalesID CHAR(5) PRIMARY KEY CHECK(SalesID LIKE 'SS[0-9][0-9][0-9]'),
	StaffID CHAR(5) NOT NULL FOREIGN KEY REFERENCES MsStaff(StaffID) ON UPDATE CASCADE ON DELETE CASCADE, 
	CustomerID CHAR(5) NOT NULL FOREIGN KEY REFERENCES MsCustomer(CustomerID) ON UPDATE CASCADE ON DELETE CASCADE, 
	SalesDate DATE NOT NULL, 
)

INSERT INTO [SalesHeader] VALUES
('SS001', 'ST001', 'CS005', '2022-08-25'),
('SS002', 'ST004', 'CS007', '2022-09-12'),
('SS003', 'ST006', 'CS003', '2022-11-25'),
('SS004', 'ST003', 'CS006', '2022-03-25'),
('SS005', 'ST009', 'CS004', '2022-10-15'),
('SS006', 'ST009', 'CS003', '2022-07-20'),
('SS007', 'ST005', 'CS004', '2022-01-12'),
('SS008', 'ST001', 'CS010', '2022-09-13'), 
('SS009', 'ST002', 'CS001', '2022-10-17'),
('SS010', 'ST005', 'CS009', '2022-04-08'),
('SS011', 'ST004', 'CS002', '2022-02-01'),
('SS012', 'ST003', 'CS006', '2022-06-30'),
('SS013', 'ST007', 'CS010', '2022-08-03'),
('SS014', 'ST002', 'CS008', '2022-12-17'),
('SS015', 'ST008', 'CS001', '2022-05-25');

CREATE TABLE SalesDetail(
	SalesID CHAR(5) CHECK(SalesID LIKE 'SS[0-9][0-9][0-9]') FOREIGN KEY REFERENCES SalesHeader(SalesID) ON UPDATE CASCADE ON DELETE CASCADE,
	MealID CHAR(5) NOT NULL FOREIGN KEY REFERENCES MealPrep(MealID) ON UPDATE CASCADE ON DELETE CASCADE,
	Quantity INT NOT NULL
)

INSERT INTO [SalesDetail] VALUES
('SS001', 'PM001', '2'),
('SS001', 'PM009', '4'),
('SS001', 'PM004', '9'),
('SS002', 'PM008', '8'),
('SS002', 'PM010', '2'),
('SS003', 'PM007', '5'),
('SS003', 'PM005', '6'),
('SS004', 'PM003', '10'),
('SS004', 'PM006', '2'),
('SS005', 'PM004', '14'),
('SS006', 'PM002', '3'),
('SS006', 'PM004', '12'),
('SS007', 'PM009', '5'),
('SS008', 'PM007', '2'),
('SS008', 'PM005', '10'),
('SS009', 'PM002', '4'),
('SS010', 'PM010', '15'),
('SS010', 'PM008', '7'),
('SS011', 'PM003', '3'),
('SS012', 'PM006', '6'),
('SS012', 'PM001', '1'),
('SS013', 'PM008', '2'),
('SS014', 'PM002', '12'),
('SS014', 'PM004', '9'),
('SS015', 'PM008', '5'),
('SS015', 'PM005', '20');
