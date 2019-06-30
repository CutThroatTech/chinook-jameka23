--Provide a query that shows the total sales per country.

select * from invoice

SELECT SUM(Total) AS 'Total Sales',
    BillingCountry
FROM Invoice
GROUP BY BillingCountry
