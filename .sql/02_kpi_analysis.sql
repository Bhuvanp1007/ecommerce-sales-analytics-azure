--total revenue 
select sum(Quantity * Unit_price) as Total_Revenue
from dbo.Sales;
    
-- total orders    
select count(DISTINCT Order_id) as Total_Orders
from dbo.Sales;

--total units sold
select sum(quantity) as total_units_sold
from dbo.sales;

--average order value
select sum(quantity * unit_price) / COUNT(distinct order_id) as average_order_value
from dbo.sales;