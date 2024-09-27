-- Find how many products sold
SELECT 
COUNT(distinct ProductID) as UniqueID,
Sum(Quantity) as NumberOfOrder
from OrderItem
-- select * from OrderItem