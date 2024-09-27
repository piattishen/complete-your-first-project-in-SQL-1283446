-- Find infrequent customers
select
FirstName,
Lastname,
count(distinct OrderID) as OrderTimes
from Orders
left outer join Customer
on Customer.CustomerID = Orders.CustomerID
group by Customer.CustomerID
HAVING count(distinct OrderID) = 1