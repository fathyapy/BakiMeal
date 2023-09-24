USE BakiMeal
-- 1 
-- Display RegionalBranchName, PurchaseDate, Total Item Purchase (obtained from the sum of meal prep quantity)
-- for every purchase date is before the 20th day of the month and the regional branch’s name contains “Tangerang” in their name.
SELECT  BranchName, 
		PurchaseDate , 
		'Total Item Purchase' = SUM(Quantity)
FROM MsBranch mb
JOIN PurchaseHeader ph ON ph.BranchID = mb.BranchID
JOIN PurchaseDetail pd ON ph.PurchaseID = pd.PurchaseID
WHERE BranchName LIKE '%Tangerang%' AND DAY(PurchaseDate)< 20
GROUP BY BranchName, PurchaseDate

-- 2
-- Display StaffName, SalesDate (obtained from sales date in ‘dd mon yyyy’ format), and Total Sales (obtained from the total number of different prep meal sold in one transaction) 
-- for every staff salary is less than 5000000 and sales occurred in October or November.
SELECT	StaffName, 
		'SalesDate' = CONVERT(NVARCHAR, sh.SalesDate, 106), 
		'Total Sales' = COUNT(*)
FROM MsStaff ms 
JOIN SalesHeader sh ON sh.StaffID = ms.StaffID
JOIN SalesDetail sd ON sd.SalesID = sh.SalesID
WHERE StaffSalary < 5000000 AND DATENAME(MONTH,SalesDate) = 'October' OR DATENAME(MONTH,SalesDate) = 'November'
GROUP BY StaffName, [SalesDate]

-- 3 
-- Display StaffName, Average Purchase Quantity (obtained from average purchase quantity), Total Meal Supplied (obtain by adding ‘ Meal’ at the end of the sum of purchased meal quantity), 
-- for every transaction handled by staff whose gender is female and total Meal Prep purchased less than 8.
-- UDAH BENER
SELECT	StaffName, 
		'Average Purchase Quantity' = AVG(Quantity), 
		'Total Meal Supplied' = CONCAT(SUM(Quantity), ' Meal')
FROM MsStaff ms
JOIN PurchaseHeader ph ON ms.StaffID = ph.StaffID
JOIN PurchaseDetail pd ON ph.PurchaseID = pd.PurchaseID
WHERE StaffGender LIKE 'Female'
GROUP BY StaffName
HAVING SUM(Quantity) < 8


-- 4
--Display RegionalBranchName, Total Purchase (obtained from the total number of different prep meal purchased in one transaction), and Average Purchase Price (obtained from the average of Meal Prep’s purchase price and started with ‘Rp. ’) for every region branch name length is more than 15 characters and contain three words. 
-- UDAH BENER
SELECT	BranchName,
		'Total Purchase' = COUNT(*), 
		'Average Purchase Price' = CONCAT('Rp. ', AVG(MealPurchasePrice))
FROM MsBranch mb
JOIN PurchaseHeader ph ON mb.BranchID = ph.BranchID
jOIN PurchaseDetail pd ON ph.PurchaseID = pd.PurchaseID
JOIN MealPrep mp ON pd.MealID = mp.MealID
WHERE LEN(BranchName) > 15 AND BranchName LIKE '% % %'
GROUP BY BranchName

--5 
-- Display RegionalBranchAddress, BranchPhone (obtained by replacing branch phone first character into ‘+62’), PurchaseDate, StaffName, and Quantity (obtain by adding ‘ pcs’ at the end of total purchase quantity) 
-- for every transaction that quantity is greater than the average of all purchase quantity and the transaction occurred in September or December. (alias subquery) 
-- UDAH BISA
SELECT	 BranchAddress,
		'BranchPhone' = STUFF(BranchPhone, 1, 1, '+62'),
		PurchaseDate, StaffName,
		'Quantity' = CAST(SUM(Quantity) AS VARCHAR) + ' pcs'
FROM MsBranch mb
JOIN PurchaseHeader ph ON mb.BranchID = ph.BranchID
JOIN MsStaff ms ON ph.StaffID = ms.StaffID
JOIN PurchaseDetail pd ON ph.PurchaseID = pd.PurchaseID,
(
	SELECT 'Average Purchase Quantity' = AVG(Quantity)
	FROM PurchaseDetail pd
) x
WHERE Quantity > x.[Average Purchase Quantity]
AND MONTH(PurchaseDate) = 9 OR MONTH(PurchaseDate) = 12
GROUP BY BranchAddress, BranchPhone, PurchaseDate, StaffName

-- 6
-- Display Customer ID (obtained by replacing ‘CS’ with ‘Customer ’), Handle by (obtained by replacing ‘ST00’ into ‘Staff ’), Total Meal Prep Sales Price (obtained from the total of sales price times quantity and adding ‘Rp. ’ in front of  Total Meal Prep Sales Price), MealPrepName, and Quantity 
-- for every transaction where the sales price is the highest and quantity more than 2. (alias subquery)
-- UDAH BISA tp masih ragu
SELECT 'Customer ID' = REPLACE(mc.CustomerID, 'CS','Customer '), 
		'Handle by' = REPLACE(ms.StaffId, 'ST00','Staff '),
		'Total Meal Prep Sales Price' = CONCAT ('Rp.',(MealSalesPrice*sd.Quantity)),
		MealPrepName,
		sd.Quantity
FROM MsCustomer mc
JOIN SalesHeader sh ON mc.CustomerID = sh.CustomerID
JOIN MsStaff ms ON sh.StaffID = ms.StaffID
JOIN SalesDetail sd ON sd.SalesID = sh.SalesID
JOIN MealPrep mp ON mp.MealID = sd.MealID,
(
	SELECT 'Highest' = MAX(MealSalesPrice)
	FROM MealPrep mp 
) AS X
WHERE MealSalesPrice = x.Highest AND Quantity > 2


-- 7
-- Display Last Name (obtained from staff’s last name), Total Purchase Has been done (obtained from the total number of the different meal prep purchased in one transaction), and StaffSalary 
-- for every transaction handled by female staff that has salary less than the average of all staff salary. (alias subquery)
-- UDAH BENER
SELECT  'Last Name' = RIGHT(StaffName, CHARINDEX(' ', REVERSE(StaffName))), 
		'Total Purchase Has been done' = COUNT(*), StaffSalary
FROM MsStaff ms
JOIN PurchaseHeader ph ON ph.StaffID = ms.StaffID
JOIN PurchaseDetail pd ON pd.PurchaseID = ph.PurchaseID,
(
	SELECT 'Average Salary' = AVG(StaffSalary)
	FROM MsStaff
	WHERE StaffGender LIKE 'Female'
) AS X
WHERE StaffSalary < x.[Average Salary]
GROUP BY RIGHT(StaffName, CHARINDEX(' ', REVERSE(StaffName))), StaffSalary

-- 8 
-- Display Staff Initial (obtained from the first character of staff’s name and last character of staff’s name in uppercase format), CustomerID, Total Sales (obtained from the total number of meal prep sold in transaction), SalesDate
-- for every transaction that quantity is the smallest and happened on month 9. (alias subquery)
-- UDAH BENER
SELECT 'Staff Initial' = UPPER(CONCAT(RIGHT(StaffName,1),LEFT(StaffName,1))),
		mc.CustomerID,
		'Total Sales'= SUM(Quantity),
		SalesDate
FROM MsStaff ms 
JOIN SalesHeader sh ON sh.StaffID = ms.StaffID
JOIN SalesDetail sd ON sd.SalesID = sh.SalesID
JOIN MsCustomer mc ON mc.CustomerID = sh.CustomerID,
(
	SELECT 'MIN' = MIN(Quantity)
	FROM SalesDetail sd
	JOIN SalesHeader sh ON sh.SalesID = sd.SalesID
	WHERE MONTH(SalesDate) = 9 
) AS X
GROUP BY UPPER(CONCAT(RIGHT(StaffName,1),LEFT(StaffName,1))), mc.CustomerID, SalesDate

-- 9
-- Create a view named ‘ViewPurchaseTransaction’ to display StaffEmail, Purchase Date, Total Purchase Meal Prep (obtained from the sum of quantity), and Total Purchase Transaction (obtained from the total number of meal prep purchased in one transaction) 
-- for every staff whose email contains ‘@gmail’ or ‘@hotmail’ and total purchase Meal Prep more than 50.
-- UDAH BISA
CREATE VIEW ViewPurchaseTransaction
AS
SELECT  StaffEmail, 
		PurchaseDate, 
		'Total Purchase Meal Prep' = SUM(Quantity), 
		'Total Purchase Transaction' = COUNT(*)
FROM MsStaff ms
JOIN PurchaseHeader ph ON ph.StaffID = ms.StaffID
JOIN PurchaseDetail pd ON pd.PurchaseID = ph.PurchaseID
WHERE StaffEmail LIKE '%@gmail.com%' OR StaffEmail LIKE '%@hotmail.com%'
GROUP BY StaffEmail, PurchaseDate
HAVING SUM(Quantity) > 50

-- 10
-- Create a view named ‘ViewSalesTransaction’ to display StaffName, Sales Date (obtained from sales date in ‘Mon dd, yyyy’ format), Total Sales Transaction (obtained from the total number of meal prep sold in one transaction), Total Sales Quantity (obtained from the sum of quantity)  
-- for every transaction that meal prep’s sales price is less than 450000 and total sales transaction is greater than 1.
-- UDAH BISA 
CREATE VIEW ViewSalesTransaction
AS
SELECT  StaffName, 
		sd.SalesID,
		'Sales Date'= CONVERT(NVARCHAR,SalesDate,107), 
		'Total Sales Transaction' = COUNT(*),
		'Total Sales Quantity' = SUM(Quantity) 
FROM MsStaff ms
JOIN SalesHeader sh ON sh.StaffID = ms.StaffID
JOIN SalesDetail sd ON sd.SalesID = sh.SalesID
JOIN MealPrep mp ON mp.MealID = sd.MealID
WHERE MealSalesPrice < 450000
GROUP BY StaffName, CONVERT(NVARCHAR,SalesDate,107), sd.SalesID
HAVING COUNT(Quantity) > 1
