-- Find top product size sold
-- select * from OrderItem
-- select * from Product 
select size,
sum(quantity) as totalnumber
from Product
join OrderItem on Product.ProductID=OrderItem.ProductID
GROUP BY Size
order by totalnumber DESC