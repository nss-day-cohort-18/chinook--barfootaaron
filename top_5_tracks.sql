--Provide a query that shows the top 5 most purchased tracks over all.

SELECT tra.name, "$" || printf("%.2f", sum(tra.unitprice)) as total_price
FROM Track tra
GROUP BY tra.name
ORDER BY sum(tra.unitprice) desc
LIMIT 5;