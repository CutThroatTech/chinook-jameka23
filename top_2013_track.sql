-- top_2013_track.sql: Provide a query that shows the most purchased track of 2013.

select t.Name as TrackName,  COUNT(t.Name) as SoldTrack
from InvoiceLine il
join Invoice i on i.InvoiceId = il.InvoiceId
join Track t on t.TrackId = il.TrackId
join Album al on al.AlbumId = t.AlbumId
join Artist a on a.ArtistId = al.ArtistId
where i.InvoiceDate like '%2013%'
group by t.Name
order by SoldTrack desc

-- clearly there are multiple songs