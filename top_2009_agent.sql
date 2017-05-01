-- Which sales agent made the most in sales in 2009?

SELECT emp.firstname || " " || emp.lastname  AS sales_rep, "$" || printf("%.2f", SUM(inv.[TOTAL])) AS sales_total
FROM Employee emp 
JOIN Customer cus on emp.employeeid = cus.supportrepid
JOIN Invoice inv on cus.customerid = inv.customerid
WHERE emp.title = 'Sales Support Agent' 
AND substr(inv.invoicedate, 0, 5) = '2009'
GROUP BY emp.employeeid
ORDER BY SUM(inv.[TOTAL]) desc
LIMIT 1;
