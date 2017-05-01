--Provide a query that shows the most purchased Media Type.
--select distinct(name)from MediaType;

SELECT mt.name, "$" || printf("%.2f", sum(t.unitprice)) as total_price
FROM Artist a 
JOIN Album al ON a.artistid = al.artistid
JOIN Track t ON al.albumid = t.albumid
JOIN MediaType mt ON t.mediatypeid = mt.mediatypeid
GROUP BY mt.name
ORDER BY sum(t.unitprice) desc