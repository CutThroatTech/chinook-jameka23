-- What are the respective total sales for each of those years?
select * from Invoice

select SUM(Total) as 'Total Sales',
        COUNT(InvoiceId) as 'Invoices Yearly'
FROM Invoice
WHERE YEAR(InvoiceDate) = '2009'
UNION ALL
select SUM(Total) as 'Total Sales',
        COUNT(InvoiceId) as 'Invoices Yearly'
FROM Invoice
WHERE YEAR(InvoiceDate) = '2011'