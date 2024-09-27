-- Determine top customer state
SELECT
State,
sum(TotalDue) as TotalDollar
from Orders
LEFT OUTER JOIN Customer
On Customer.CustomerID = Orders.CustomerID
Left outer join OrderItem
ON OrderItem.OrderID = Orders.OrderID
group by State
order by TotalDollar DESC
limit 1