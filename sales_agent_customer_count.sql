-- Provide a query that shows the count of customers assigned to each sales agent.

SELECT e.EmployeeId 'Sales Rep Id', e.FirstName, e.LastName, COUNT(c.CustomerId) 'Customer Count'
FROM Employee e
JOIN Customer c on e.employeeid = c.supportrepid
JOIN Invoice i on c.customerid = i.customerid
WHERE e.title = 'Sales Support Agent' 
GROUP BY e.EmployeeId
