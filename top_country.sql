 -- Which country's customers spent the most?

SELECT BillingCountry 'Country', "$" || SUM([Total]) 'Total Sales'
FROM Invoice
GROUP BY BillingCountry
ORDER BY SUM([Total]) desc
limit 1;