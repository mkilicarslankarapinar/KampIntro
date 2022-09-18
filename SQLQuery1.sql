--Select
--ANSII
SELECT ContactName,CompanyName,City Sehir FROM Customers

SELECT * FROM Customers WHERE City='Berlin'

--case insensitive
SELECT * FROM Products WHERE CategoryID=1 or CategoryID=3

SELECT * FROM Products WHERE CategoryID=1 and UnitPrice>=10

SELECT * FROM Products ORDER BY UnitPrice desc

SELECT count(*) Adet from Products WHERE CategoryID = 2

SELECT CategoryID,count(*) FROM Products where UnitPrice>20
GROUP BY CategoryID  having count(*)<10

SELECT Products.ProductID, Products.ProductName, Products.UnitPrice, Categories.CategoryName, Categories.CategoryID 
FROM Products inner join Categories 
on Products.CategoryID=Categories.CategoryID
WHERE Products.UnitPrice>10


--DTO Data Transformation Object

SELECT * FROM Products p left join [Order Details] od
ON p.ProductID = od.ProductID 

SELECT * FROM Customers c left join Orders o
ON c.CustomerID = o.CustomerID
WHERE o.CustomerID is null 


SELECT p.ProductName, sum(od.UnitPrice*od.Quantity) AS Total
FROM Products p
inner join [Order Details] od
on od.ProductID = p.ProductID
group by p.ProductName





