create database A_Z_MEDICINE;
 USE A_Z_MEDICINE;
 
 SELECT * FROM a_z_medicines_dataset;
 
 create view total_medicines as
 select 
 count(ID) as TOTAL_MEDICINES, 
 COUNT(DISTINCT manufacturer_name) AS total_brands
FROM  a_z_medicines_dataset;
select * from total_medicines;
create view average_price as
SELECT 
AVG(PRICE) AS AVERAGE_PRICE
FROM a_z_medicines_dataset;
select * from average_price;
create view medicine_count as 
SELECT 
    manufacturer_name, 
    COUNT(*) AS medicine_count  
FROM a_z_medicines_dataset
GROUP BY manufacturer_name
ORDER BY medicine_count DESC
LIMIT 10;
select * from medicine_count;

create view top10 as 
SELECT manufacturer_name ,
count(*) as TOP_10 
from a_z_medicines_dataset
GROUP BY manufacturer_name 
ORDER BY count(*) DESC
 LIMIT 10;
 SELECT * FROM top10 ;
 
 
 
 
 

 create view price_segment as 
 SELECT 
    CASE
    WHEN PRICE< 20 THEN 'ULTRA CHEAP (<20)'
    WHEN PRICE BETWEEN 20 AND 100 THEN 'ECONOMY (20-100)'
    WHEN PRICE BETWEEN 100 AND 500 THEN 'MID_RANGE (100-500)'
    WHEN PRICE BETWEEN 500 AND 2000 THEN 'PREMIUM (500-2000)'
    ELSE 'SPECIALITY (>2000)'
    end as PRICE_SEGMENT,
    COUNT(*) AS COUNT
    FROM a_z_medicines_dataset
    GROUP BY PRICE_SEGMENT
    ORDER BY count DESC;
 
 SELECT * FROM PRICE_SEGMENT;
 
create view avg_unit_price_limit10 as 
SELECT
    manufacturer_name,
    AVG(PRICE) AS AVG_UNIT_PRICE,
    COUNT(*) AS PRODUCT_COUNT
FROM a_z_medicines_dataset
GROUP BY manufacturer_name
HAVING product_count > 50
ORDER BY AVG_UNIT_PRICE DESC
LIMIT 15;
SELECT * FROM AVG_UNIT_PRICE_LIMIT10;

create view unit_frequency as SELECT short_composition1, COUNT(*) AS usage_frequency
FROM a_z_medicines_dataset
GROUP BY short_composition1
ORDER BY usage_frequency DESC
LIMIT 10;
select * from unit_frequency;

  create view active_meds as 
  SELECT 
    CASE WHEN Is_discontinued = 1 THEN 'Discontinued' ELSE 'Active' END AS status,
    COUNT(*) AS total
FROM a_z_medicines_dataset
GROUP BY status;
select * from active_meds;

create view avpricedesc as 
select
  name,
  price,
  manufacturer_name from a_z_medicines_dataset
  where price > (select avg(price) * 5 from a_z_medicines_dataset)
  order by price desc;
  
  select * from avpricedesc;
  
  -- kpi--
  create view total as SELECT 
    COUNT(id) AS total_products,
    COUNT(DISTINCT manufacturer_name) AS active_manufacturers
FROM a_z_medicines_dataset;
select * from total;

create view maxmin as SELECT 
    ROUND(AVG(price), 2) AS average_medicine_price,
    MAX(price) AS most_expensive_item,
    MIN(price) AS cheapest_item
FROM a_z_medicines_dataset
WHERE price > 0;
select * from maxmin;

create view unique_chem as 
SELECT COUNT(DISTINCT short_composition1) AS unique_chemical_formulas
FROM a_z_medicines_dataset;
select* from unique_chem;

create view premium as 
SELECT COUNT(*) AS premium_medicine_count
FROM a_z_medicines_dataset
WHERE price > 1000;
select* from premium;

create view dist_manufacturer as 
SELECT DISTINCT manufacturer_name 
FROM a_z_medicines_dataset
ORDER BY manufacturer_name ASC;
select* from dist_manufacturer;

SELECT name, price, manufacturer_name, short_composition1, is_discontinued 
FROM a_z_medicines_dataset;

SELECT 
    id,
    name,
    manufacturer_name,
    short_composition1,
    price,
    
    CASE
        WHEN price < 20 THEN 'ULTRA CHEAP (<20)'
        WHEN price BETWEEN 20 AND 100 THEN 'ECONOMY (20-100)'
        WHEN price BETWEEN 100 AND 500 THEN 'MID_RANGE (100-500)'
        WHEN price BETWEEN 500 AND 2000 THEN 'PREMIUM (500-2000)'
        ELSE 'SPECIALITY (>2000)'
    END AS price_segment,
    -- This adds the Status directly
    CASE 
        WHEN is_discontinued = 1 THEN 'Discontinued' 
        ELSE 'Active' 
    END AS availability_status
FROM a_z_medicines_dataset;