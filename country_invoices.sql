 -- Provide a query that shows the # of invoices per country.
SELECT i.BillingCountry, COUNT(i.InvoiceId) '# of invoices'
FROM Invoice i
GROUP BY i.BillingCountry