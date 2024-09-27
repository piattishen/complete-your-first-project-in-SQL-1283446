-- Determine new customers
select
Customer.CustomerID,
count(OrderID) as TotalOrder,
FirstName,
LastName
from Customer
LEFT OUTER join Orders
on Orders.CustomerID = Customer.CustomerID
group by CustomerID
HAVING TotalOrder = 0
