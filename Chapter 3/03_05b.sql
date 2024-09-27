-- Calculate repeat customer rate
with Repeat_Customer as 
(
  select
  CustomerID as Repeat_Cus
  from Orders
  group by CustomerID
  having count(OrderID) > 1
)
select 
(count(distinct Repeat_CUS)/
count(DISTINCT CustomerID)) * 100
as RepeatCustomerRate
from Orders
left outer join Repeat_Customer
on Orders.CustomerID = Repeat_Customer.Repeat_Cus
