--Task One Start
 
 Create Database SQLServer

 Use SQLServer

 Create Table Employees
 (
	Id int Identity Primary Key,
	Name nvarchar(100) Not Null,
	SurName nvarchar(100) Not Null,
	Position nvarchar(100) Not Null,
	Salary int
)
					
Drop Table Employees

Insert Into Employees Values
('Aliev', 'Faig', 'Back End Developer',2000),
('Alieva', 'Sevil', 'Front End Developer',500),
('Dovlatov', 'Kamran', 'FullStack  Developer',3000),
('Chelebi', 'Evliya', 'Developer',5000),
('Turagay', 'Barlas', 'Developer',2000),
('Aliev1', '15Faig', 'Developer',6000),
('Aliev2', '13Faig', 'Developer',200),
('Aliev3', '12Faig', 'Developer',10000),
('Aliev4', '11Faig', 'Developer',5000),
('Aliev5', '10Faig', 'Developer',5000),
('Aliev6', '9Faig', 'Developer',8000),
('Aliev7', '8Faig', 'Developer',9000),
('Aliev8', '7Faig', 'Developer',77000),
('Aliev9', '6Faig', 'Developer',15000),
('Aliev10', '5Faig', 'Developer',60000),
('Aliev11', '5Faig', 'Developer',40000),
('Aliev12', '3Faig', 'Developer',100000),
('Aliev13', '2Faig', 'Developer',50000),
('Aliev14', '1Faig', 'Developer',13000),
('Aliev', 'Faig', 'Developer',1000)

--1.Ortalama Maas
Select AVG(Salary) From Employees

--2.Ortalama maaşdan yuxarı maaş alan işçilərin ad soyadını və maaşını yazdırmalısız
Select * From Employees Where Salary > (Select AVG(Salary) From Employees)


--3.Max, Min maaşları çıxarmalı
Select Max(Salary) From Employees

Select Min(Salary) From Employees

 --Task One End


 -------------------------------Task Two Start


 -------Icinde Products Table-i yaradin.Product table-inda Id,Name,Price columnlari olsun

 Create Table Products
 (
	Id int Identity Primary Key,
	Name nvarchar(100) Not Null,
	Price int Not Null
)

---Products table-na yeni bir Brand columnu elave edin

Alter Table Products Add Brand nvarchar(100)


---Products table-a value-lar insert edin (10-15 dene product datasi kifayetdir)

Insert Into Products Values
('14 Pro', 2500 , 'Apple'),
('14 Pro Pax', 3000 , 'Apple'),
('S22 Ultra', 2000 , 'Samsung'),
('S22', 1800 , 'Samsung'),
('Poco M3', 300 , 'Xiaomi'),
('Note 20', 1500 , 'Samsung'),
('Note 20 Ultra', 1900 , 'Samsung'),
('Watch SE', 1500 , 'Apple'),
('14 Pro', 2500 , 'Apple'),
('14 Pro Pax', 3000 , 'Apple'),
('S22 Ultra', 2000 , 'Samsung'),
('S22', 1800 , 'Samsung'),
('Poco M3', 300 , 'Xiaomi'),
('Note 20', 1500 , 'Samsung'),
('Note 20 Ultra', 1900 , 'Samsung'),
('Watch SE', 1500 , 'Apple'),
('14 Pro', 2500 , 'Apple'),
('14 Pro Pax', 3000 , 'Apple'),
('S22 Ultra', 2000 , 'Samsung'),
('S22', 1800 , 'Samsung'),
('Poco M3', 300 , 'Xiaomi'),
('Note 20', 1500 , 'Samsung'),
('Note 20 Ultra', 1900 , 'Samsung'),
('Watch SE', 1500 , 'Apple')


--Qiymeti Productlarin price-larinin average-den kicik olan Products datalarinin siyahisini getiren query yazin
Select  * From Products Where Price < ( Select AVG(Price) From Products)


----Qiymeti 10(Men 2000 den Getirecem) -dan yuxari olan Product datalarinin siyahisini getiren query yazin

Select * From Products Where Price > 2000



----Brand uzunlugu 5-den boyuk olan Productlarin siyahisini getiren query.Gelen datalarda Mehsulun adi ve Brand adi 1 columnda gorsensin ve Column adi ProductInfo olsun (dersdeki name ve surname-i fullname kimi gostermeye uygun)

Select (Name + 'Brand') InfoProducts From Products Where Len(Brand) > 5




 -------------------------------Task Two End
