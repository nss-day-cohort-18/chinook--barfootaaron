-- Provide a query showing the Invoices of customers who are from Brazil. 
-- The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.

SELECT c.CustomerId, c.FirstName, c.LastName, c.Country, i.InvoiceId, i.InvoiceDate
FROM Customer c
JOIN Invoice i ON i.CustomerId = c.CustomerId
WHERE c.Country is 'Brazil'