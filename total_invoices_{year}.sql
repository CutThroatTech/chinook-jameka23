--How many Invoices were there in 2009 and 2011?

SELECT COUNT(InvoiceId) as 'Invoices',YEAR(InvoiceDate) as 'Year'
FROM Invoice
WHERE YEAR(InvoiceDate) = '2009'
GROUP By YEAR(InvoiceDate) 
UNION ALL
SELECT COUNT(InvoiceId),YEAR(InvoiceDate) 
FROM Invoice
WHERE YEAR(InvoiceDate) = '2011'
GROUP By YEAR(InvoiceDate) 