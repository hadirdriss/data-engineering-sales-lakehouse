# data-engineering-sales-lakehouse

### Project Overview

This project implements a full Data Lakehouse architecture using Databricks, PySpark, and Power BI.
The goal is to build an end-to-end ETL pipeline (Bronze → Silver → Gold) that ingests a CSV file, transforms it, aggregates business metrics, and visualizes results in a Power BI dashboard.

Architecture
![Architecture](data-engineering-sales-lakehouse/diagrams/architecture.jpg)

### 🛠 Technologies Used

- **Databricks**

- **PySpark**

- **SQL**

- **Delta Lake**

- **Power BI**

- **Lakehouse Architecture**

- **Data Visualization**

### 🔄 ETL Pipeline


1️⃣ Bronze Layer

- **Raw ingestion of CSV**

- **No transformations**

- **Saved as Delta table**

2️⃣ Silver Layer

- **Data cleaning (dropna)**

- **Date formatting**

- **Added calculated column total = price * quantity**

3️⃣ Gold Layer

- **Aggregation by:**

country

product

order_date

-**Metrics:**

total_sales

total_qty

### Code (Bronze → Silver → Gold)
📘 Bronze – Ingestion

