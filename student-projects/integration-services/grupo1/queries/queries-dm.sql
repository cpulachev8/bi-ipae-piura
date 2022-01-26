-- Query para poblar DimCustomer
-- customerId, customerName
SELECT c.CustomerID, cast(c.ContactName as varchar(30)) customerName FROM Customers c

-- Query para poblar DimProduct
-- ProductId, ProductName, Category
-- Subconsulta
SELECT p.ProductID, p.ProductName, ct.CategoryName
FROM Products p, Categories ct
WHERE p.CategoryID = ct.CategoryID

-- INNER JOIN
SELECT p.ProductID, p.ProductName, ct.CategoryName
FROM Products p
INNER JOIN Categories ct ON p.CategoryID = ct.CategoryID

-- Query para poblar DimTime
SELECT DISTINCT OrderDate, YEAR(o.OrderDate), MONTH(o.OrderDate), DAY(o.OrderDate)
FROM Orders o

-- Obtener partes de un datetime
SELECT GETDATE() fecha_actual, YEAR(GETDATE()) anio, MONTH(GETDATE()) mes, DAY(GETDATE()) dia
SELECT GETDATE() fecha_actual, DATEPART(YEAR, GETDATE()) anio, DATEPART(MONTH, GETDATE()) mes, DATEPART(DAY, GETDATE()) dia,
DATEPART(HOUR, GETDATE()) hora

-- Query para poblar THOrder
SELECT od.OrderID, dm.productDimKey, dc.customerDimKey, SUM(od.Quantity) cantidad, ROUND(SUM(od.UnitPrice*od.Quantity-od.Discount), 2) monto
FROM [Order Details] od
INNER JOIN Orders o ON od.OrderID = o.OrderID
INNER JOIN NorthwindDM.dbo.DimProduct dm ON od.ProductID = dm.productId
INNER JOIN NorthwindDM.dbo.DimCustomer dc ON o.CustomerID = dc.customerId
INNER JOIN NorthwindDM.dbo.DimTime dt ON o.OrderDate = dt.orderDate
GROUP BY od.OrderID, dm.productDimKey, dc.customerDimKey
ORDER BY od.OrderID


SELECT * FROM Orders where OrderID = 10248
SELECT * FROM [Order Details] where OrderID = 10248 -- 27 58.6

SELECT * FROM [Order Details] WHERE ProductID = 11 -- 14

