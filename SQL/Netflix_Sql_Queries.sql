create database Netflix_db;
use Netflix_db;
show tables;
select * from netflix_customers;

-- Active_customer
select count(*) as Active_customer 
from netflix_customers
where Account_status ="Active";

-- subscription_plan
select subscription_plan,count(*) as customers
from netflix_customers
group by subscription_plan
order by customers desc;

-- Revenue by subscription plan
select subscription_plan , sum(Customer_Revenue) as Total_Revenue
from netflix_customers
group by subscription_plan
order by Total_revenue;

-- popular genre
select Genre,count(*) as Views
from netflix_customers
group by Genre
order by Views desc;

-- country
select Country,count(*) as customers
from netflix_customers
group by Country
order by customers desc;

-- device usage
select Device,count(*) as customers
from netflix_customers
group by Device
order by customers desc;

-- top 10 customers by revenue 
select Customer_name,Title,Customer_Revenue
from netflix_customers
order by Customer_Revenue desc
limit 10;

-- movies vs series
select Content_Type,count(*) as Total
from netflix_customers
group by Content_Type;

-- Average rating by genre
select Title,round(avg(Avg_Rating),1) as Average_rating
from netflix_customers
group by Title
order by 2 desc;

select current_user();
show  variables like 'port';

-- Age group 
select Age_group,count(*)
from netflix_customers
group by Age_group;

