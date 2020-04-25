--Which sales agent made the most in sales over all?

select TOP 1  MAX(Customer_Total_Sales) as topSell, Top_Emp_Sale.FullName
from (select e.EmployeeId as Emp, CONCAT(e.FirstName, ' ', e.LastName) as FullName, SUM(i.Total) as Customer_Total_Sales
	from Invoice i
	full join Customer c on c.CustomerId = i.CustomerId
	full join Employee e on e.EmployeeId = c.SupportRepId
	--where i.InvoiceDate like '%2009%'
	group by e.EmployeeId, e.FirstName,e.LastName) as Top_Emp_Sale
group by Top_Emp_Sale.FullName
order by topSell desc
