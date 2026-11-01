# Supply Chain & Inventory MIS

A portfolio MIS and analytics project monitoring inventory levels, stockout exposure, demand and supplier lead times using **synthetic inventory data**.

## Project Overview
The project demonstrates how inventory data can be used to monitor stock availability and highlight items that may need replenishment review. It combines Python analysis, SQL queries and Power BI starter measures.

## Business Questions
- Which warehouses hold the highest inventory value?
- Which SKUs are below their reorder level?
- How do demand and supplier lead times vary by category?
- Where are stockout indicators concentrated?

## Key Metrics
| Metric | Definition |
|---|---|
| SKU Count | Count of distinct stock keeping units |
| Inventory Value | Inventory quantity multiplied by unit cost |
| Stockout SKUs | Count of SKUs flagged as stockout |
| Stockout Rate | Stockout SKUs / relevant SKU count |
| Units Sold | Total units sold in the dataset |
| Average Lead Time | Mean supplier lead time |

## Tools & Technologies
- **Python:** pandas, matplotlib
- **SQL:** PostgreSQL
- **Power BI:** DAX starter measures

## Repository Structure
```text
Supply-Chain-Inventory-MIS/
├── data/
│   └── inventory.csv
├── python/
│   └── analysis.py
├── sql/
│   └── analysis.sql
├── powerbi/
│   └── measures.dax
└── README.md
```

## Run the Analysis
1. Install dependencies:
   ```bash
   pip install pandas matplotlib
   ```
2. Run:
   ```bash
   python python/analysis.py
   ```
3. Import `data/inventory.csv` into PostgreSQL as `inventory` and execute `sql/analysis.sql`.
4. Use `powerbi/measures.dax` as a starting point for a Power BI report.

## Dataset & Limitations
The dataset contains **500 generated SKU snapshots** and no real supplier information. Reorder policies require validation against actual demand, safety-stock rules and supplier lead-time history.

## Author
**Omkar S. Kshirsagar** — Data Analytics Portfolio
