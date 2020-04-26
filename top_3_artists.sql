--top_3_artists.sql: Provide a query that shows the top 3 best selling artists.

select TOP 3 MAX(TotalTracksSold) as maxSold, topTracks.Name
from (select COUNT(a.Name) as TotalTracksSold, a.Name
	from InvoiceLine i
	left join Track t on t.TrackId = i.TrackId
	left join Album al on al.AlbumId = t.AlbumId
	left join Artist a on a.ArtistId = al.ArtistId
	group by a.Name)as topTracks
group by topTracks.Name
order by maxSold desc