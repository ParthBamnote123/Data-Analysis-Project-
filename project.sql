create schema cd;
use cd;
select * from  mobileanalysis;

-- Check Mobile features and price list --
select phone_name, price from mobileanalysis;

-- Find out the price of 5 most expensive phones --
select * from mobileanalysis order by price desc limit 5;

-- Find out the price of 5 most cheapest phones --
select * from mobileanalysis order by price asc limit 5;

--  List of top 5 Samsung phones with price and all features --

select * from mobileanalysis where brands = "samsung"
order by price desc limit 5;

-- Must have android phone list then top 5 High price android phones--
select *  from mobileanalysis where operating_system_type = "Android"
order by price desc 
limit 5;

-- Must have android phone list then top 5 lowest price android phones--
select *  from mobileanalysis where operating_system_type = "Android"
order by price asc 
limit 5;

-- --#--
select *  from mobileanalysis where operating_system_type = "IOS"
order by price desc 
limit 5;

-- Must have IOS phone list then top 5 lowest price android phones--
select *  from mobileanalysis where operating_system_type = "IOS"
order by price asc 
limit 5;

-- Write a query which phone support 5G and also top 5 phone with 5G support --
select *  from mobileanalysis where 5g_availability = "Yes"
order by price desc 
limit 5;

-- Total price of all mobile is to be found with brand name --
select brands , sum(price) from mobileanalysis group by  brands;






