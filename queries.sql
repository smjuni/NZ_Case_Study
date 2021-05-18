SELECT * 
FROM sales_data;

-- Show Top Three SKUS by ORDERS for the most recent 8 weeks
SELECT item_sku,
SUM(skus_count) AS "Number Ordered"
FROM sales_data
WHERE order_date >= '2020-08-05' AND order_date < '2020-10-01'
GROUP BY item_sku
ORDER BY "Number Ordered" DESC
LIMIT 3;


-- AVERAGE ORDER VALUE BY PRODUCT
SELECT product_category,
AVG(sales) AS "Average Order Value"
FROM sales_data
GROUP BY product_category
ORDER BY AVG(sales) DESC;


--Product Category with the highest repeat rate
SELECT product_category,
COUNT(new_or_repeat_by_order='Repeat') AS "Repeat Orders"
FROM sales_data
WHERE new_or_repeat_by_order ='Repeat'
GROUP BY product_category
ORDER BY "Repeat Orders" DESC
LIMIT 1;

Noissue Tissue