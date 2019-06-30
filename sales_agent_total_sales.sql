--Provide a query that shows total sales made by each sales agent.
SELECT * from Customer
select * from Invoice
select * from Employee

SELECT SUM(i.Total) as 'TOTAL sales', 
        e.EmployeeId
FROM Invoice i
RIGHT JOIN Customer c ON c.CustomerId = i.CustomerId
JOIN Employee e ON e.EmployeeId = c.SupportRepId
WHERE e.Title = 'Sales Support Agent'
GROUP BY e.EmployeeId