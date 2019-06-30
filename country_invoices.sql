--Provide a query that shows the # of invoices per country
select * from Invoice

SELECT COUNT(InvoiceId) as '# of Invoices',
        BillingCountry
FROM Invoice
GROUP BY BillingCountry