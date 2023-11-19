/*SELECT ROUND(6.7345,2);-- second argument is precision(keep one after decimal point then round the number
SELECT TRUNCATE(5.7654,2);-- keeping two digits after decimal point then removing the remaining
SELECT CEILING(5.7);-- return smallest integer that is greater than or equal to the number
SELECT ROUND(5.5);
SELECT FLOOR(5.2);-- return largest number that is less than are equal to given number
SELECT ABS(-5.2);-- always return a positive value
SELECT RAND();-- generate a floating point number between 0 and 1
-- string functions 
SELECT LENGTH("abc");
SELECT UPPER("abc");
SELECT LOWER("ABC");
SELECT LTRIM("     ji");
SELECT RTRIM("jik  ");
SELECT TRIM(' dsiu');
SELECT LEFT("nithya",2);
SELECT RIGHT("nithya",2);
SELECT SUBSTRING("happy",2,3);-- second one is no of letter from index given it is optional
select locate("jan","soujanya");-- return first occurance if not present then it will return 0
select replace("suguna","na","ja");
select concat("lj","lo");



select now();-- return date and time
select curdate();
select curtime();
select  year(now());
select  month(now());
select  day(now());
select  hour(now());
select  minute(now());
select  second(now());
select  dayname(now());
select  monthname(now());
select extract(day from now());
use sql_store;
SELECT * FROM orders where year(order_date)>=year(now());
SELECT DATE_FORMAT(NOW(),'%y');-- return year in two digits;
SELECT DATE_FORMAT(NOW(),'%Y');-- return year in four digits;
SELECT DATE_FORMAT(NOW(),'%m');-- return two digits month 
SELECT DATE_FORMAT(NOW(),'%M');-- return month name
SELECT DATE_FORMAT(NOW(),'%M %Y');*/
-- SELECT DATE_FORMAT(NOW(),'%M %D %Y');
-- SELECT DATE_FORMAT(NOW(),'%M %d %Y');
-- SELECT TIME_FORMAT(NOW(),'%H:%i %p');-- i for minutes p for pm or am
-- SELECT DATE_ADD(NOW(),INTERVAL 1 DAY);
-- SELECT DATE_ADD(NOW(),INTERVAL 1 YEAR);
-- SELECT DATE_ADD(NOW(),INTERVAL -1 DAY);
-- SELECT DATE_SUB(NOW(),INTERVAL 1 YEAR); -- for subtracting
-- SELECT DATEDIFF('2019-01-05','2019-01-01');
-- SELECT DATEDIFF('2019-01-05 09:00','2019-01-01 17:00');-- get smae value irrespective of time 
-- SELECT DATEDIFF('2019-01-01','2019-01-05');-- returrn negative value 
-- SELECT TIME_TO_SEC('01:00');-- since midnight seconds
-- SELECT TIME_TO_SEC('01:00')-TIME_TO_SEC('01:03');;
/*USE sql_store;
SELECT order_id,
    IFNULL(shipper_id,'Not Assigned') AS shipper
FROM orders;*/-- if shipper id is null then it will return not assigned
/*USE sql_store;
SELECT order_id,
    COALESCE(shipper_id,comments,'Not Assigned') AS shipper
FROM orders;*/ -- return information in the comments if comments also not present then return not assigned
-- simply return non null value in the list
 /*SELECT CONCAT(first_name,' ',last_name),
		IFNULL(phone,'unknown')
FROM customers;*/
-- IF(expression,first,second) if expression treu the it will display first value otherwise second value
/*SELECT order_id,order_date,
	IF(YEAR(order_date)=YEAR(NOW()),'Active','Archived') AS status
FROM orders;*/
/*SELECT name,p.product_id,
	COUNT(*) AS orderstimes,
    if(COUNT(*)>1,'Many times','Once') AS frequency
	FROM products p
    JOIN order_items 
    USING(product_id)
    GROUP BY product_id;*/
/*SELECT 
	order_id,
    CASE 
		WHEN YEAR(order_date)=YEAR(NOW()) THEN 'Active' 
        WHEN YEAR(order_date)=YEAR(NOW()) -1 THEN 'last year' 
        WHEN YEAR(order_date)<YEAR(NOW()) -1 THEN 'Archived'
	END AS category
FROM orders;*/
SELECT CONCAT(first_name,' ',last_name) AS customer,
	points,
    CASE 
    WHEN points>3000 THEN 'Gold'
    WHEN points>2000 THEN 'Sliver'
    WHEN points<2000 THEN 'Bronze'
    ELSE 'NO option'
	END AS category 
FROM customers;

	
