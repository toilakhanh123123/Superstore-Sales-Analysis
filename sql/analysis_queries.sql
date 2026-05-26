/* ==========================================
   SUPERSTORE SALES ANALYSIS - SQLITE QUERIES (FIXED)
   ========================================== */

-- 🔹 SECTION 1: EXECUTIVE KPIs
SELECT 
    COUNT(DISTINCT "Order ID") AS total_orders,
    ROUND(SUM("Sales"), 2) AS total_sales,
    ROUND(SUM("Profit"), 2) AS total_profit,
    COUNT(DISTINCT "Customer ID") AS unique_customers,
    ROUND(AVG("Sales"), 2) AS avg_order_value,
    ROUND(SUM("Profit") * 100.0 / NULLIF(SUM("Sales"), 0), 2) AS profit_margin_pct
FROM superstore_cleaned;


-- 🔹 SECTION 2: TREND ANALYSIS (Time Series)
SELECT 
    "Order Year",
    "Order Month Name",
    ROUND(SUM("Sales"), 2) AS monthly_sales,
    ROUND(SUM("Profit"), 2) AS monthly_profit,
    LAG(ROUND(SUM("Sales"), 2)) OVER (ORDER BY "Order Year", "Order Month") AS prev_month_sales
FROM superstore_cleaned
GROUP BY "Order Year", "Order Month Name", "Order Month"
ORDER BY "Order Year", "Order Month";


-- 🔹 SECTION 3: PRODUCT PERFORMANCE + RANKING
WITH subcat_perf AS (
    SELECT 
        "Category",
        "Sub-Category",
        ROUND(SUM("Sales"), 2) AS total_sales,
        ROUND(SUM("Profit"), 2) AS total_profit,
        ROUND(SUM("Profit") * 100.0 / NULLIF(SUM("Sales"), 0), 2) AS margin_pct
    FROM superstore_cleaned
    GROUP BY "Category", "Sub-Category"
)
SELECT 
    *,
    RANK() OVER (PARTITION BY "Category" ORDER BY total_profit DESC) AS profit_rank_in_category
FROM subcat_perf
ORDER BY "Category", profit_rank_in_category;


-- 🔹 SECTION 4: DISCOUNT IMPACT ANALYSIS
SELECT 
    CASE 
        WHEN "Discount" = 0 THEN 'No Discount'
        WHEN "Discount" <= 0.2 THEN 'Low (1-20%)'
        WHEN "Discount" <= 0.4 THEN 'Medium (21-40%)'
        ELSE 'High (>40%)'
    END AS discount_band,
    COUNT("Order ID") AS order_count,
    ROUND(AVG("Profit"), 2) AS avg_profit_per_order,
    ROUND(SUM("Profit") * 100.0 / NULLIF(SUM("Sales"), 0), 2) AS margin_pct
FROM superstore_cleaned
GROUP BY discount_band
ORDER BY MIN("Discount");