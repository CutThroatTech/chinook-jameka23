-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice.
select * from InvoiceLine

SELECT COUNT(InvoiceLineId) '# of line items',
        InvoiceId
FROM InvoiceLine
GROUP BY InvoiceId