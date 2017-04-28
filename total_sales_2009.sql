-- What are the respective total sales for each of those years?

SELECT SUM(Total)
FROM Invoice 
WHERE InvoiceDate  BETWEEN date('2009-01-01') AND date('2009-12-31')