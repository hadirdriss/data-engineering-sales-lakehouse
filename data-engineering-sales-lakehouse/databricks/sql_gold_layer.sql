spark.sql("""
CREATE OR REPLACE TABLE demo_catalog.raw.gold_sales AS
SELECT
    country,
    product,
    order_date,
    SUM(total) AS total_sales,
    SUM(quantity) AS total_qty
FROM demo_catalog.raw.silver_sales
GROUP BY country, product, order_date
""")