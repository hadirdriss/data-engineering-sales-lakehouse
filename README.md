# data-engineering-sales-lakehouse

### 📋 Project Overview

This project implements a full Data Lakehouse architecture using Databricks, PySpark, and Power BI.
The goal is to build an end-to-end ETL pipeline (Bronze → Silver → Gold) that ingests a CSV file, transforms it, aggregates business metrics, and visualizes results in a Power BI dashboard.

Architecture
![Architecture](data-engineering-sales-lakehouse/diagrams/architecture.jpg)

### 🛠 Technologies Used

- Databricks

- PySpark

- SQL

- Delta Lake

- Power BI

- Lakehouse Architecture

- Data Visualization

## 🏗️ Project Folder Structure
```
data-engineering-sales-lakehouse/
│
├── databricks/
│     ├── bronze_silver_gold_notebook.py
│     ├── sql_gold_layer.sql
│
├── powerbi/
│     ├── sales_dashboard.pbix
│
├── dataset/
│     ├── sample_sales.csv
│
├── diagrams/
│     ├── architecture.png
│     ├── dashboard_preview.png
│
└── README.md
```

### 🔄 ETL Pipeline


**1️⃣ Bronze Layer**

- Raw ingestion of CSV

- No transformations

- Saved as Delta table

**2️⃣ Silver Layer**

- Data cleaning (dropna)

- Date formatting

- Added calculated column total = price * quantity

**3️⃣ Gold Layer**

- Aggregation by:

country

product

order_date

- Metrics:

total_sales

total_qty

### Code (Bronze → Silver → Gold)
📘 Bronze – Ingestion
```
df_bronze = (
    spark.read
    .format("csv")
    .option("header", True)
    .option("inferSchema", True)
    .load("/Volumes/demo_catalog/raw/sales_volume/sales_large.csv")
)

df_bronze.write.mode("overwrite").saveAsTable("demo_catalog.raw.bronze_sales")
```
