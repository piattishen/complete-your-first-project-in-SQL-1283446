-- Find average daily sales
select
Sum(OrderItem.Quantity)/
count(distinct Orders.CreationDate) as DailySales
from Orders
left OUTER JOIN OrderItem
on Orders.OrderID = OrderItem.OrderID