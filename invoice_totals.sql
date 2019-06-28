--Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.
SELECT * FROM Invoice;
SELECT * FROM Employee

SELECT i.Total AS 'Invoice Total',
        i.InvoiceId,
        CONCAT(c.FirstName, ' ', c.LastName) AS 'Customer Name',
        c.Country,
        CONCAT(e.FirstName, ' ', e.LastName) AS 'Employee Name'
FROM Invoice i
JOIN Employee e ON e.EmployeeId = i.InvoiceId
JOIN Customer c ON c.SupportRepId = e.EmployeeId