--Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.
select * from Customer;

SELECT FirstName,
        LastName,
        CustomerId,
        Country
FROM Customer
WHERE Customer.Country != 'USA';