-- Provide a query that includes the purchased track name with each invoice line item.

SELECT il.InvoiceLineId, il.TrackId, t.name
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
GROUP BY il.InvoiceLineId