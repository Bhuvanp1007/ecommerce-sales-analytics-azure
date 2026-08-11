-- category revenue analysis
select 
 category,
sum(quantity  * unit_price) as revenue
from dbo.sales
group by category
order by revenue desc;


--city revenue analysis
select
city,
sum(quantity * unit_price) as revenue
from dbo.Sales
group by "City"
order by revenue desc;


--top 10 product analysis
select top 10
 product,
 sum(quantity * unit_price) as revenue
 from dbo.Sales
 group by "Product"
 order by revenue desc;

 --revenue by payment method
 SELECT 
 payment_method,
 sum(quantity * unit_price) as revenue
 from dbo.Sales
 group by payment_method
 order by revenue desc;

 --monthly revenue analysis
 select 
 year(order_date) as year,
 month(order_date) as month,
 sum(quantity * unit_price) as revenue
 from dbo.Sales
 group by 
 year(order_date),
 MONTH(order_date)
order by revenue desc;

--revenue vs units sold by product 
select
product,
sum(quantity) as units_sold,
sum(quantity * unit_price) as revenue
from dbo.Sales
group by product
order by revenue desc;