-- Supply Chain & Inventory MIS starter queries
-- Expected table: inventory_movements(sku, warehouse, movement_date, movement_type, quantity)

-- Receipts, issues, and net movement
SELECT sku, warehouse,
       SUM(CASE WHEN movement_type = 'RECEIPT' THEN quantity ELSE 0 END) AS received_qty,
       SUM(CASE WHEN movement_type = 'ISSUE' THEN quantity ELSE 0 END) AS issued_qty,
       SUM(CASE WHEN movement_type = 'RECEIPT' THEN quantity
                WHEN movement_type = 'ISSUE' THEN -quantity ELSE 0 END) AS net_movement_qty
FROM inventory_movements
GROUP BY sku, warehouse
ORDER BY sku, warehouse;

-- Monthly stock movement
SELECT DATE_TRUNC('month', movement_date)::date AS movement_month,
       SUM(CASE WHEN movement_type = 'RECEIPT' THEN quantity ELSE 0 END) AS received_qty,
       SUM(CASE WHEN movement_type = 'ISSUE' THEN quantity ELSE 0 END) AS issued_qty
FROM inventory_movements
GROUP BY DATE_TRUNC('month', movement_date)
ORDER BY movement_month;