-- Provide a query that shows the count of customers assigned to each sales agent

select * from Customer
select * from Employee

select COUNT(c.CustomerId) AS '# of Customers',
    e.EmployeeId
FROM Customer c
JOIN Employee e ON e.EmployeeId = c.SupportRepId
GROUP BY e.EmployeeId