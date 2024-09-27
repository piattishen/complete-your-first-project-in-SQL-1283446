-- Find sales by month and year
select
monthname(CreationDate) as MonthName,
year(CreationDate) as OrderYear,
count(Orders.OrderID) as OrderID,
Sum(quantity) as TotalQuantity,
sum(TotalDue) as TotalAmount
from Orders
LEFT OUTER JOIN OrderItem
on Orders.OrderID = OrderItem.OrderID
group by MonthName, OrderYear
order by OrderYear, Month(CreationDate)
