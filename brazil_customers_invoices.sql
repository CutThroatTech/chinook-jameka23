--Provide a query showing the Invoices of customers who are from Brazil. 
--The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.
select * from Invoice;
select * from Customer;

SELECT c.FirstName, 
        c.LastName,
        i.InvoiceId,
        i.InvoiceDate,
        i.BillingCountry
FROM Invoice i
JOIN Customer c ON c.CustomerId = i.CustomerId;