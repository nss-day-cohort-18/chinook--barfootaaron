--Provide a query that shows the top 3 best selling artists.

SELECT art.name, "$" || printf("%.2f", sum(tra.unitprice)) as total_price
FROM Artist art 
JOIN Album alb ON art.artistid = alb.artistid
JOIN Track tra ON alb.albumid = tra.albumid
GROUP BY art.name
ORDER BY sum(tra.unitprice) desc
LIMIT 3;