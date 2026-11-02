# Inventory Control Methodology

## Grain
Identify whether each record is a SKU snapshot, warehouse-SKU snapshot, or transaction. Calculate inventory value at the correct grain.

## KPI rules
- Inventory value = on-hand quantity × unit cost.
- Stockout SKU = SKU at or below the documented stockout threshold.
- Reorder candidate = on-hand quantity at or below reorder point; this is not automatically a confirmed stockout.
- Average lead time uses completed receipts and a consistent day-count convention.

## Validation
Check duplicate SKU/warehouse keys, negative stock, missing costs, invalid reorder points, units of measure, and snapshot dates.

## Operational caveat
Replenishment also depends on forecasts, safety stock, open purchase orders, and supplier constraints.
