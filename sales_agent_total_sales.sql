 -- Provide a query that shows total sales made by each sales agent.

SELECT e.FirstName 'First Name', e.LastName 'Last Name', e.Title, SUM(i.Total) 'Total Sales'
FROM Employee e
JOIN Customer c ON c.SupportRepId = e.EmployeeId
JOIN Invoice i ON i.CustomerId = c.CustomerId
WHERE e.Title is 'Sales Support Agent'
GROUP BY e.EmployeeId