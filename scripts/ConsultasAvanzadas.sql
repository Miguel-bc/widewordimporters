-- Find the top 5 salespersons who have billed the highest amounts.
SELECT TOP 5 [Salesperson Key], SUM([Total Excluding Tax]) AS TotalQuantitySold
FROM Fact.Sale
GROUP BY [Salesperson Key]
ORDER BY TotalQuantitySold DESC;

-- Show the most recent and oldest order dates for each customer.
SELECT [Customer Key], MIN([Order Date Key]) AS EarliestOrderDate, MAX([Order Date Key]) AS LatestOrderDate
FROM [WideWorldImportersDW].[Fact].[Order]
GROUP BY [Customer Key];
