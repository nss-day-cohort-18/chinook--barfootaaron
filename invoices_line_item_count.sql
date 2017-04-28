-- Provide a query that shows all Invoices but includes the # of invoice line items.

SELECT InvoiceId, COUNT(InvoiceLineId) '# of line items per invoice'
FROM InvoiceLine
GROUP BY InvoiceId