--top_country.sql: Which country's customers spent the most?

select TOP 1 MAX(CountryTotalSales) as TotalCountrySales, BillingCountry
from (select SUM(Total) as CountryTotalSales, BillingCountry
	from Invoice
	group by BillingCountry) as TotalSales
group by BillingCountry
order by TotalCountrySales desc

-- SIMPLIER 

SELECT TOP 1 SUM(Total)as Total_High, BillingCountry 
FROM Invoice 
GROUP BY BillingCountry
ORDER BY Total_High DESC