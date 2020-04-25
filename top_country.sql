--select MAX(Count(Total)), BillingCountry
--from Invoice
--Group By BillingCountry

--select MAX(Highest_Total), BillingCountry
--from (select SUM(Total) as Highest_Total, BillingCountry
--from Invoice
--group by BillingCountry)
--group by BillingCountry

--SELECT MAX(Total_High) as bull, BillingCountry
--FROM (SELECT SUM(Total)as Total_High, BillingCountry FROM Invoice GROUP BY BillingCountry) as something
--group by BillingCountry
--order by

-- 23. Which country's customers spent the most?
SELECT TOP 1 SUM(Total)as Total_High, BillingCountry 
FROM Invoice 
GROUP BY BillingCountry
ORDER BY Total_High DESC