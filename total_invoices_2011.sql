-- How many Invoices were there in 2009?

SELECT COUNT(InvoiceId)
FROM Invoice 
WHERE InvoiceDate  BETWEEN date('2011-01-01') AND date('2011-12-31')