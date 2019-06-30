--Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.
SELECT * FROM Track

SELECT t.Name as 'Track',
        al.Title as 'Album',
        g.Name as 'Genre',
        m.Name as 'Media Type'
FROM Track t
JOIN Album al on al.AlbumId = t.AlbumId
JOIN Genre g on g.GenreId = t.GenreId
JOIN MediaType m on m.MediaTypeId = t.MediaTypeId