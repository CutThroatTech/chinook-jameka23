-- Provide a query that includes the purchased track name with each invoice line item.
select * from InvoiceLine

select *
from InvoiceLine i
JOIN Track t on t.TrackId = i.TrackId
