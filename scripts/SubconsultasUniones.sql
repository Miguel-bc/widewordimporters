--Encontrar los clientes que han realizado compras en los últimos 3 meses



--Listar los productos que se vendieron más de una vez en la misma orden.




-- Ejercicio 8
-- SELECT CustomerName
-- FROM Sales.Customers
-- WHERE CustomerID NOT IN (SELECT DISTINCT CustomerID FROM Sales.Orders);

-- Ejercicio 9
-- SELECT StockItemID, OrderID, COUNT(*) AS QuantitySoldInOrder
-- FROM Sales.OrderLines
-- GROUP BY StockItemID, OrderID
-- HAVING COUNT(*) > 1;