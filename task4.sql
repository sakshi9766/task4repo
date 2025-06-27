/*alter table customers
add column coustomer_expen varchar(20);*/


update customers set coustomer_expen=600 where customer_id=101;
update customers set coustomer_expen=546 where customer_id=102;
update customers set coustomer_expen=613 where customer_id=103;
update customers set coustomer_expen=142 where customer_id=104;
update customers set coustomer_expen=462 where customer_id=105;
update customers set coustomer_expen=284 where customer_id=107;
--update customers set coustomer_expen=600 where customer_id=105;
select * from customers;

update customers set phone=5378263456 where customer_id=107;
update customers set address='satara' where customer_id=107;
select * from customers;

SELECT AVG(age) AS average_age
FROM customers;

SELECT address AS city, COUNT(*) AS customer_count
FROM customers
GROUP BY address;

SELECT address AS city,
       SUM(coustomer_expen::integer) AS city_total_expenditure
FROM customers
GROUP BY address;

ALTER TABLE customers
ALTER COLUMN coustomer_expen TYPE INTEGER
USING coustomer_expen::integer;


SELECT address AS city, SUM(coustomer_expen) AS city_total_expenditure
FROM customers
GROUP BY address;


SELECT address AS city, SUM(coustomer_expen) AS city_total_expenditure
FROM customers
GROUP BY address
HAVING SUM(coustomer_expen) > 800;

SELECT MAX(coustomer_expen) AS max_expenditure,
       MIN(coustomer_expen) AS min_expenditure
FROM customers;


