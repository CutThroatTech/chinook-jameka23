--Which sales agent made the most in sales in 2009? 

-- this works but I don't like it, feel like I can do something else
--select  MAX(Customer_Total_Sales) as topSell, Top_Emp_Sale.FullName
--from (select e.EmployeeId as Emp, CONCAT(e.FirstName, ' ', e.LastName) as FullName, SUM(i.Total) as Customer_Total_Sales
--	from Invoice i
--	full join Customer c on c.CustomerId = i.CustomerId
--	full join Employee e on e.EmployeeId = c.SupportRepId
--	where i.InvoiceDate like '%2009%'
--	group by e.EmployeeId, e.FirstName,e.LastName) as Top_Emp_Sale
--group by Top_Emp_Sale.FullName
--order by topSell desc


select TOP 1 MAX(Customer_Total_Sales) as topSell,  e.EmployeeId, e.FirstName, e.LastName
from (select e.EmployeeId as Emp, SUM(i.Total) as Customer_Total_Sales
	from Invoice i
	full join Customer c on c.CustomerId = i.CustomerId
	full join Employee e on e.EmployeeId = c.SupportRepId
	where i.InvoiceDate like '%2009%'
	group by e.EmployeeId, e.FirstName,e.LastName) as Top_Emp_Sale 
join Employee e on e.EmployeeId = Top_Emp_Sale.Emp
group by e.EmployeeId,e.FirstName, e.LastName
order by topSell desc


-- THIS JUST GIVES ME THE TOTAL SALES BUT DOESN'T ADD THE NAME
--select MAX(Customer_Total_Sales)
--from (select e.EmployeeId as Emp, SUM(i.Total) as Customer_Total_Sales
--	from Invoice i
--	full join Customer c on c.CustomerId = i.CustomerId
--	full join Employee e on e.EmployeeId = c.SupportRepId
--	where i.InvoiceDate like '%2009%'
--	group by e.EmployeeId, e.FirstName,e.LastName) as Top_Emp_Sale 
