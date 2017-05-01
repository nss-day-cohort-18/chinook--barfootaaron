-- Provide a query that shows the most purchased track of 2013.

SELECT t.name, COUNT(i.InvoiceId) AS number_of_tracks_sold
FROM Track t 
JOIN InvoiceLine il ON t.TrackId = il.TrackId
JOIN Invoice i ON il.InvoiceId = i.InvoiceId
WHERE substr(i.InvoiceDate, 0, 5) = '2013'
GROUP BY t.name
HAVING count(i.InvoiceId) = 
	(
	SELECT COUNT(i.InvoiceId)
	FROM Track t 
	JOIN InvoiceLine il ON t.TrackId = il.TrackId
	JOIN Invoice i ON il.InvoiceId = i.InvoiceId
	WHERE substr(i.InvoiceDate, 0, 5) = '2013'
	GROUP BY t.name
	ORDER BY COUNT(i.InvoiceId) DESC
	LIMIT 1
	)   