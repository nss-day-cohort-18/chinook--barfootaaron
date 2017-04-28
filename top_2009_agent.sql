-- Which sales agent made the most in sales in 2009?


SELECT e.FirstName 'First Name', e.LastName 'Last Name', e.Title, SUM(i.Total) 'Total Sales'
FROM Employee e
JOIN Customer c ON c.SupportRepId = e.EmployeeId
JOIN Invoice i ON i.CustomerId = c.CustomerId
WHERE e.Title is 'Sales Support Agent'
AND InvoiceDate BETWEEN date('2009-01-01') AND date('2009-12-31')
GROUP BY e.EmployeeId


