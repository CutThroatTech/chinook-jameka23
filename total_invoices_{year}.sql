--How many Invoices were there in 2009 and 2011?
select * FROM Invoice

SELECT COUNT(InvoiceId) as 'invoices'
FROM Invoice
WHERE YEAR(InvoiceDate) = '2009'
GROUP By YEAR(InvoiceDate) 
UNION ALL
SELECT COUNT(InvoiceId) as '2011 invoices'
FROM Invoice
WHERE YEAR(InvoiceDate) = '2011'
GROUP By YEAR(InvoiceDate) 