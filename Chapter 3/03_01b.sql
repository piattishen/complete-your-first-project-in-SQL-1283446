-- Find top customers
SELECT
FirstName,
LastName,
count(distinct Orders.OrderID) as TotalOrder,
sum(Quantity) as TotalQuantity,
Sum(Totaldue) as TotalAmount
from Orders
LEFT OUTER JOIN Customer
ON Customer.CustomerID = Orders.CustomerID
Left Outer Join OrderItem
ON OrderItem.OrderID = Orders.OrderID
group by Customer.CustomerID
order by TotalAmount Desc