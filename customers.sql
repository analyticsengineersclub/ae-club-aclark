/* For each customer, we want to know how many orders they have placed, and when they placed their first order. */
#adairs comment
SELECT 
   c.id AS customer_id
   , c.name
   , c.email
   , COUNT(o.id) AS total_orders
   , MIN (o.created_at) AS first_order_at
FROM analytics-engineers-club.coffee_shop.orders AS o
LEFT JOIN analytics-engineers-club.coffee_shop.customers AS c
  ON o.customer_id = c.id
GROUP BY 1,2,3
ORDER BY first_order_at 
