-- How many Invoices were there in 2009?

SELECT COUNT(InvoiceId)
FROM Invoice 
WHERE InvoiceDate BETWEEN date('2009-01-01') AND date('2009-12-31')