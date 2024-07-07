use mydb;
 -- 1
 select id, date, year(date), month(date), day(date) from orders;
 
-- 2

select id, date, date_add(date, interval 1 day) as next_day from orders;

-- 3

select id, date, round(unix_timestamp(date)) as timeset from orders;

-- 4

SELECT COUNT(*) AS order_quantity
FROM orders
WHERE date BETWEEN '1996-07-10 00:00:00' AND '1996-10-08 00:00:00';


-- 5
SELECT id, date,
JSON_OBJECT('id', id, 'date', date) AS orders_json
FROM orders;
