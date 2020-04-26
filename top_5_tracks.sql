-- top_5_tracks.sql: Provide a query that shows the top 5 most purchased songs.

select TOP 5 COUNT(Track.Name)as TotalSongsBought, Track.Name as 'Track Name'
from InvoiceLine
full join Track on Track.TrackId = InvoiceLine.TrackId
left join Album on Album.AlbumId = Track.AlbumId
left join Artist on Artist.ArtistId = Album.ArtistId
group by Track.Name
order by TotalSongsBought desc