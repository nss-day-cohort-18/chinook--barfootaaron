-- Which sales agent made the most in sales over all?

SELECT e.firstname || " " || e.lastname AS sales_rep, "$" || printf("%.2f", SUM(i.[TOTAL])) AS sales_total
FROM Employee e
JOIN Customer c on e.employeeid = c.supportrepid
JOIN Invoice i on c.customerid = i.customerid
WHERE e.title = 'Sales Support Agent' 
GROUP BY e.employeeid
ORDER BY SUM(i.[TOTAL]) desc
LIMIT 1;