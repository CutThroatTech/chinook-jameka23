-- Provide a query showing only the Employees who are Sales Agents.
SELECT * FROM Employee

SELECT LastName,
        FirstName,
        Title,
        EmployeeId
FROM Employee
WHERE Employee.ReportsTo = 2;