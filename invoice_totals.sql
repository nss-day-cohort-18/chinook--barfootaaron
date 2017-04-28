 -- Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

SELECT i.Total, c.FirstName, c.LastName, c.Country, c.SupportRepId
FROM Invoice i
JOIN Customer c ON c.CustomerId = i.CustomerId