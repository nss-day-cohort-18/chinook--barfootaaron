-- Provide a query showing only the Employees who are Sales Agents.

SELECT e.FirstName, e.LastName, e.Title
FROM Employee e
WHERE e.Title is 'Sales Support Agent'
