-- Determine what products sold together
SELECT
a.ProductID as ProductID1,
b.ProductID as ProductID2,
count(*) as TimesTogether
from OrderItem as a
join OrderItem as b
on a.OrderID = b.OrderID
and a.ProductID < b.ProductID
group by a.ProductID,b.ProductID
order by TimesTogether DESC