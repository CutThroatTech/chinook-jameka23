--Provide a query only showing the Customers from Brazil.
select * from Customer;

SELECT FirstName,
        LastName
FROM Customer
WHERE Country = 'Brazil';