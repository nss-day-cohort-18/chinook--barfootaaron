-- Provide a query that includes the purchased track name 
-- AND artist name with each invoice line item.

SELECT il.InvoiceLineId, il.TrackId, t.name 'Track', a.name 'Artist'
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
JOIN Album al ON al.AlbumId = t.AlbumId
JOIN Artist a ON al.ArtistId = a.ArtistId
GROUP BY il.InvoiceLineId