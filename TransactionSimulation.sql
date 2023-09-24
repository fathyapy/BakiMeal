USE BakiMeal

-- Group 7
-- 2502000685 - Fathya Putri Yasmina
-- 2501992583 - Yuan Stefanus Tampubolon
-- 2502002513 - Yogi Pratama Hutagalung

-- Query to simulate the transactions processes --

-- I. Purchase Transaction

-- 1. PC001
-- Pada tanggal 15 Agustus 2022, Staff 1 membeli meal prep dari branch Baki Meal Tangerang Selatan, dengan rincian :
-- - Ayam Kalasan, berjumlah 13
-- - Opor Ayam, berjumlah 4
-- - Kroket Sapi, berjumlah 1

INSERT INTO [PurchaseHeader] VALUES
('PC001', '2022-08-15', 'ST001', 'RB007');

INSERT INTO [PurchaseDetail] VALUES
('PC001', 'PM001', '13'),
('PC001', 'PM002', '4'),
('PC001', 'PM005', '1');

-- 2. PC002
-- Pada tanggal 19 September 2022, Staff 8 membeli meal prep dari branch BakiMeal Bekasi, dengan rincian :
-- - Sate Lilit, berjumlah 20
-- - Sate Maranggi, berjumlah 13
-- - Kambing Guling, berjumlah 24

INSERT INTO [PurchaseHeader] VALUES
('PC002', '2022-09-19', 'ST008', 'RB004');

INSERT INTO [PurchaseDetail] VALUES
('PC002', 'PM006', '20'),
('PC002', 'PM004', '13'),
('PC002', 'PM003', '24');

-- 3. PC003
-- Pada tanggal 22 Oktober 2022, Staff 3 membeli meal prep dari branch BakiMeal Surabaya, dengan rincian :
-- - Arsik Ikan, berjumlah 8
-- - Ayam Gulai, berjumlah 5

INSERT INTO [PurchaseHeader] VALUES
('PC003', '2022-10-22', 'ST003', 'RB005');

INSERT INTO [PurchaseDetail] VALUES
('PC003', 'PM008', '8'),
('PC003', 'PM009', '5');

-- 4. PC004
-- Pada tanggal 10 Januari 2022, Staff 5 membeli meal prep dari branch BakiMeal Bekasi, dengan rincian :
-- - Rendang Sapi, berjumlah 2
-- - Ayam Kalasan, berjumlah 3

INSERT INTO [PurchaseHeader] VALUES
('PC004', '2022-01-10', 'ST005', 'RB004');

INSERT INTO [PurchaseDetail] VALUES
('PC004', 'PM010', '2'),
('PC004', 'PM001', '3');

-- 5. PC005
-- Pada tanggal 29 Maret 2022, Staff 7 membeli meal prep dari branch BakiMeal Jakarta Barat, dengan rincian :
-- - Kroket Sapi, berjumlah 1
-- - Ayam Gulai, berjumlah 8

INSERT INTO [PurchaseHeader] VALUES
('PC005', '2022-03-29', 'ST007', 'RB002');

INSERT INTO [PurchaseDetail] VALUES
('PC005', 'PM005', '1'),
('PC005', 'PM009', '8');

-- 6. PC006
-- Pada tanggal 23 Februari 2022, Staff 4 membeli meal prep dari branch BakiMeal Bandung, dengan rincian :
-- - Kambing Guling, berjumlah 10

INSERT INTO [PurchaseHeader] VALUES
('PC006', '2022-02-23', 'ST004', 'RB001');

INSERT INTO [PurchaseDetail] VALUES
('PC006', 'PM003', '10');

-- 7. PC007
-- Pada tanggal 21 Juli 2022, Staff 2 membeli meal prep dari branch BakiMeal Kota Tangerang, dengan rincian :
-- - Tempe Bacem, berjumlah 13
-- - Ayam Gulai, berjumlah 2

INSERT INTO [PurchaseHeader] VALUES
('PC007', '2022-07-21', 'ST002', 'RB003');

INSERT INTO [PurchaseDetail] VALUES
('PC007', 'PM007', '13'),
('PC007', 'PM009', '2');

-- 8. PC008
-- Pada tanggal 13 November 2022, Staff 2 membeli meal prep dari branch BakiMeal Kota Tangerang, dengan rincian :
-- - Rendang Sapi, berjumlah 2

INSERT INTO [PurchaseHeader] VALUES
('PC008', '2022-11-13', 'ST002', 'RB003');

INSERT INTO [PurchaseDetail] VALUES
('PC008', 'PM010', '2');

-- 9. PC009
-- Pada tanggal 23 Desember 2022, Staff 8 membeli meal prep dari branch BakiMeal Yogyakarta, dengan rincian :
-- - Sate Lilit, berjumlah 11
-- - Opor Ayam, berjumlah 2

INSERT INTO [PurchaseHeader] VALUES
('PC009', '2022-12-23', 'ST008', 'RB008');

INSERT INTO [PurchaseDetail] VALUES
('PC009', 'PM006', '11'),
('PC009', 'PM002', '8');

-- 10. PC010
-- Pada tanggal 19 September 2022, Staff 10 membeli meal prep dari branch BakiMeal Jakarta Selatan, dengan rincian :
-- - Kambing Guling, berjumlah 19

INSERT INTO [PurchaseHeader] VALUES
('PC010', '2022-09-19', 'ST010', 'RB009');

INSERT INTO [PurchaseDetail] VALUES
('PC010', 'PM003', '19');

-- 11. PC011
-- Pada tanggal 30 September 2022, Staff 09 membeli meal prep dari branch BakiMeal Jakarta Pusat, dengan rincian :
-- - Arsik Ikan, berjumlah 2
-- - Tempe Bacem, berjumlah 5

INSERT INTO [PurchaseHeader] VALUES
('PC011', '2022-09-30', 'ST009', 'RB010');

INSERT INTO [PurchaseDetail] VALUES
('PC011', 'PM008', '2'),
('PC011', 'PM007', '5');

-- 12. PC012
-- Pada tanggal 19 September 2022, Staff 06 membeli meal prep dari branch BakiMeal Tangerang Selatan, dengan rincian :
-- - Ayam Kalasan, berjumlah 7

INSERT INTO [PurchaseHeader] VALUES
('PC012', '2022-09-19', 'ST006', 'RB007');

INSERT INTO [PurchaseDetail] VALUES
('PC012', 'PM001', '7');

-- 13. PC013
-- Pada tanggal 22 November 2022, Staff 03 membeli meal prep dari branch BakiMeal Surabaya, dengan rincian :
-- - Opor Ayam, berjumlah 14

INSERT INTO [PurchaseHeader] VALUES
('PC013', '2022-11-22', 'ST003', 'RB005');

INSERT INTO [PurchaseDetail] VALUES
('PC013', 'PM002', '14');

-- 14. PC014
-- Pada tanggal 01 Desember 2022, Staff 07 membeli meal prep dari branch BakiMeal Yogyakarta, dengan rincian :
-- - Ayam Gulai, berjumlah 10
-- - Kroket Sapi, berjumlah 3

INSERT INTO [PurchaseHeader] VALUES
('PC014', '2022-12-01', 'ST007', 'RB008');

INSERT INTO [PurchaseDetail] VALUES
('PC014', 'PM009', '10'),
('PC014', 'PM005', '3');

-- 15. PC015
-- Pada tanggal 19 Oktober 2022, Staff 09 membeli meal prep dari branch BakiMeal Jakarta Barat, dengan rincian :
-- - Opor Ayam, berjumlah 10
-- - Arsik Ikan, berjumlah 7

INSERT INTO [PurchaseHeader] VALUES
('PC015', '2022-10-19', 'ST009', 'RB002');

INSERT INTO [PurchaseDetail] VALUES
('PC015', 'PM002', '10'),
('PC015', 'PM008', '7');



-- II. Sales Transaction



-- 1. SS001
-- Pada tanggal 25 Agustus 2022, Staff 1 melayani pembelian dari Customer 5 (Ika Maria Leru), dengan rincian :
-- - Ayam Kalasan, berjumlah 2
-- - Ayam Gulai, berjumlah 4
-- - Sate Maranggi, berjumlah 9

INSERT INTO [SalesHeader] VALUES
('SS001', 'ST001', 'CS005', '2022-08-25');

INSERT INTO [SalesDetail] VALUES
('SS001', 'PM001', '2'),
('SS001', 'PM009', '4'),
('SS001', 'PM004', '9');

-- 2. SS002
-- Pada tanggal 12 September 2022, Staff 4 melayani pembelian dari Customer 7 (Tessalonika Sinaga), dengan rincian :
-- - Arsik Ikan, berjumlah 8
-- - Rendang Sapi, berjumlah 2

INSERT INTO [SalesHeader] VALUES
('SS002', 'ST004', 'CS007', '2022-09-12');

INSERT INTO [SalesDetail] VALUES
('SS002', 'PM008', '8'),
('SS002', 'PM010', '2');

-- 3. SS003
-- Pada tanggal 25 November 2022, Staff 6 melayani pembelian dari Customer 3, dengan rincian :
-- - Tempe Bacem, berjumlah 5
-- - Kroket Sapi, berjumlah 6

INSERT INTO [SalesHeader] VALUES
('SS003', 'ST006', 'CS003', '2022-11-25');

INSERT INTO [SalesDetail] VALUES
('SS003', 'PM007', '5'),
('SS003', 'PM005', '6');

-- 4. SS004
-- Pada tanggal 25 Maret 2022, Staff 3 melayani pembelian dari Customer 6, dengan rincian :
-- - Kambing Guling, berjumlah 10
-- - Sate Lilit, berjumlah 2

INSERT INTO [SalesHeader] VALUES
('SS004', 'ST003', 'CS006', '2022-03-25');

INSERT INTO [SalesDetail] VALUES
('SS004', 'PM003', '10'),
('SS004', 'PM006', '2');

-- 5. SS005
-- Pada tanggal 15 Oktober 2022, Staff 9 melayani pembelian dari Customer 4, dengan rincian :
-- - Sate Maranggi, berjumlah 14

INSERT INTO [SalesHeader] VALUES
('SS005', 'ST009', 'CS004', '2022-10-15');

INSERT INTO [SalesDetail] VALUES
('SS005', 'PM004', '14');

-- 6. SS006
-- Pada tanggal 20 Juli 2022, Staff 9 melayani pembelian dari Customer 3, dengan rincian :
-- - Opor Ayam, berjumlah 3
-- - Sate Maranggi, berjumlah 13
 
 INSERT INTO [SalesHeader] VALUES
 ('SS006', 'ST009', 'CS003', '2022-07-20');

 INSERT INTO [SalesDetail] VALUES
 ('SS006', 'PM002', '3'),
 ('SS006', 'PM004', '12');

-- 7. SS007
-- Pada tanggal 12 Januari 2022, Staff 5 melayani pembelian dari Customer 4, dengan rincian :
-- - Ayam Gulai, berjumlah 5

INSERT INTO [SalesHeader] VALUES
('SS007', 'ST005', 'CS004', '2022-01-12');

INSERT INTO [SalesDetail] VALUES
('SS007', 'PM009', '5');

-- 8. SS008
-- Pada tanggal 13 September 2022, Staff 1 melayani pembelian dari Customer 10, dengan rincian :
-- - Tempe Bacem, berjumlah 2
-- - Kroket Sapi, berjumlah 10

INSERT INTO [SalesHeader] VALUES
('SS008', 'ST001', 'CS010', '2022-09-13');

INSERT INTO [SalesDetail] VALUES
('SS008', 'PM007', '2'),
('SS008', 'PM005', '10');

-- 9. SS009
-- Pada tanggal 17 Oktober 2022, Staff 2 melayani pembelian dari Customer 1, dengan rincian :
-- - Opor Ayam, berjumlah 4

INSERT INTO [SalesHeader] VALUES
('SS009', 'ST002', 'CS001', '2022-10-17');

INSERT INTO [SalesDetail] VALUES
('SS009', 'PM002', '4');

-- 10. SS010
-- Pada tanggal 08 April 2022, Staff 5 melayani pembelian dari Customer 9, dengan rincian :
-- - Rendang Sapi, berjumlah 15
-- - Arsik Ikan, berjumlah 7

INSERT INTO [SalesHeader] VALUES
('SS010', 'ST005', 'CS009', '2022-04-08');

INSERT INTO [SalesDetail] VALUES
('SS010', 'PM010', '15'),
('SS010', 'PM008', '7');

-- 11. SS011
-- Pada tanggal 01 Februari 2022, Staff 4 melayani pembelian dari Customer 2, dengan rincian :
-- - Kambing Guling, berjumlah 3

INSERT INTO [SalesHeader] VALUES
('SS011', 'ST004', 'CS002', '2022-02-01');

INSERT INTO [SalesDetail] VALUES
('SS011', 'PM003', '3');

-- 12. SS012
-- Pada tanggal 30 Juni 2022, Staff 3 melayani pembelian dari Customer 6, dengan rincian :
-- - Sate Lilit, berjumlah 6
-- - Ayam Kalasan, berjumlah 1

INSERT INTO [SalesHeader] VALUES
('SS012', 'ST003', 'CS006', '2022-06-30');

INSERT INTO [SalesDetail] VALUES
('SS012', 'PM006', '6'),
('SS012', 'PM001', '1');

-- 13. SS013
-- Pada tanggal 03 Agustus 2022, Staff 7 melayani pembelian dari Customer 10, dengan rincian :
-- - Arsik Ikan, berjumlah 2

INSERT INTO [SalesHeader] VALUES
('SS013', 'ST007', 'CS010', '2022-08-03');

INSERT INTO [SalesDetail] VALUES
('SS013', 'PM008', '2');

-- 14. SS014
-- Pada tanggal 17 Desember 2022, Staff 2 melayani pembelian dari Customer 8, dengan rincian :
-- - Opor Ayam, berjumlah 12
-- - Sate Lilit, berjumlah 9

INSERT INTO [SalesHeader] VALUES
('SS014', 'ST002', 'CS008', '2022-12-17');

INSERT INTO [SalesDetail] VALUES
('SS014', 'PM002', '12'),
('SS014', 'PM004', '9');

-- 15. SS015
-- Pada tanggal 25 Mei 2022, Staff 8 melayani pembelian dari Customer 1, dengan rincian :
-- - Arsik Ikan, berjumlah 5
-- - Kroket Sapi, berjumlah 20

INSERT INTO [SalesHeader] VALUES
('SS015', 'ST008', 'CS001', '2022-05-25');

INSERT INTO [SalesDetail] VALUES
('SS015', 'PM008', '5'),
('SS015', 'PM005', '20');







