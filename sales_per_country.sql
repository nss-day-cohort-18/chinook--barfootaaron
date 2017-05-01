-- Provide a query that shows the total sales per country.

SELECT BillingCountry 'Country', "$" || SUM([Total]) 'Total Sales'
FROM Invoice
GROUP BY BillingCountry