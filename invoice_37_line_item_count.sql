-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37
select * from InvoiceLine

select COUNT(InvoiceLineId) as '# Line Items'
from InvoiceLine
where InvoiceId = '37'