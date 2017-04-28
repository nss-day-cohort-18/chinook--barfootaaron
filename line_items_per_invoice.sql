-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice.

SELECT InvoiceId, COUNT(InvoiceLineId) '# of line items per invoice'
FROM InvoiceLine
GROUP BY InvoiceId