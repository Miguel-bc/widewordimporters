-- Show the names and codes of all cities stored in the database.
SELECT DISTINCT [WWI City ID], City
FROM Dimension.City;

-- List the data of all customers whose postal code is 90119.
SELECT *
FROM Dimension.Customer
WHERE [Postal Code] = '90119';

-- Find all products that contain the word "jacket" in their name.
SELECT *
FROM Dimension.[Stock Item]
WHERE [Stock Item] LIKE '%jacket%';
