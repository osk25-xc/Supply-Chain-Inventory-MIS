# Inventory Control Methodology

## Grain
Identify whether each record is a SKU snapshot, warehouse-SKU snapshot, or transaction. Inventory value must be calculated at the correct grain to avoid double counting.

## KPI rules
- Inventory value = on-hand quantity × unit cost.
- Stockout SKU = SKU with on-hand quantity at or below the documented stockout threshold.
- Reorder candidate = on-hand quantity at or below reorder point; do not equate this automatically with a confirmed stockout.
- Average supplier lead time: use completed purchase-order receipts and a consistent day-count convention.

## Validation checklist
Check duplicate SKU/warehouse keys, negative stock, missing unit costs, reorder points below zero, and inconsistent units of measure. Compare snapshot dates before interpreting changes.

## Operational caveat
Reorder decisions also require demand forecasts, safety stock, open purchase orders, and supplier constraints. The practice dataset alone is not an operational replenishment recommendation.
