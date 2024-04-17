PROJECT 2: MOBILE SALES DATA ANALYSIS USING SQL AND POWER BI
PROBLEM STATEMENT: Mobiles are a go to device for everybody in this era. In this project we are going to analyse the sales of mobiles belonging to different brands and also will see which brand has highest and lowest sales in our analysis etc. When buying a mobile will research and pick the best out of all those by considering some of the important features like camera, RAM, software versions, battery capacity, price and many more.

create schema mobile_analysis;
use mobile_analysis;
select * from mobiledata;

-- CHECK MOBILE FEATURES AND PRICE LIST--

select phone_name, price from mobiledata;

-- FIND OUT THE PRICE OF 5 MOST EXPENSIVE PHONES--
select * from mobiledata
order by price desc
limit 5;

-- FIND OUT THE PRICES OF 5 MOST CHEAPEST PHONES--
select * from mobiledata
order by price asc
limit 5;

-- LIST OF TOP 5 SAMSUNG PHONES WITH PRICE AND ALL FEATURES--
select * from mobiledata
where brands = "samsung"
order by price desc
limit 5;

-- MUST HAVE ANDRIOD PHONE LIST THEN TOP 5 HIGH PRICE ANDRIOD PHONES--

select * from mobiledata
where Operating_System_Type = "Android"
order by Price desc
limit 5;

-- MUST HAVE ANDROID PHONE LIST THEN TOP 5 LOWER PRICE ANDRIOD PHONES--
select * from mobiledata
where Operating_System_Type = "Android"
order by Price asc
limit 5;

-- MUST HAVE IOS PHONE LIST THEN TOP 5 HIGH PRICE IOS PHONES--
select * from mobiledata
where Operating_System_Type = "IOS"
order by Price desc
limit 5;

-- MUST HAVE IOS PHONE LIST THEN TOP 5 LOWER PRICE IOS PHONES--
select * from mobiledata
where Operating_System_Type = "IOS"
order by Price asc
limit 5; 

-- WRITE A QUERY WHICH PHONE SUPPORT 5G AND ALSO TOP 5 PHONES WITH 5G SUPPORT--
select * from mobiledata
where 5G_Availability = "Yes"
order by price desc
limit 5;

-- TOTAL PRICE OF ALL MOBILE IS TO BE FOUND WITH BRAND NAME--
select Brands, sum(price) from mobiledata
group by Brands;

-- AVERAGE PRICE OF  MOBILE IS TO BE FOUND WITH BRAND NAME--
select Brands, avg(price) from mobiledata
group by Brands;

-- LOWEST PRICE OF MOBILE IN EACH BRAND--

	select Brands, min(price) as lowest_price from mobiledata
    group by Brands;
    
-- HIGHEST PRICE OF MOBILE PHONE BELOMG TO THAT BRAND--

select Brands, max(price) as highest_price from mobiledata
group by Brands;



