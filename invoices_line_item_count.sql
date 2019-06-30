--Provide a query that shows all Invoices but includes the # of invoice line items.
SELECT * from Invoice

SELECT COUNT(il.InvoiceLineId) as '# of Invoice line items',
        il.InvoiceId
FROM InvoiceLine il
FULL JOIN Invoice i on i.InvoiceId = il.InvoiceId
GROUP BY il.InvoiceId
