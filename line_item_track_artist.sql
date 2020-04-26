--Provide a query that includes the purchased track name AND artist name with each invoice line item.
SELECT * from InvoiceLine

SELECT i.InvoiceId,
        t.Name,
        art.Name
FROM InvoiceLine i
JOIN Track t on t.TrackId = i.TrackId
JOIN Album al ON al.AlbumId = t.AlbumId
JOIN Artist art ON art.ArtistId = al.ArtistId
