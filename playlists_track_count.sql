--Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.
select * from Playlist

SELECT COUNT(pt.TrackId) as 'Track Counts',
    pl.Name
FROM Playlist pl 
JOIN PlaylistTrack pt ON pt.PlaylistId = pl.PlaylistId
GROUP BY pl.Name