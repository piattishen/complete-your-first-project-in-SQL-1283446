-- Find top 3 items sold
select variety,
size,
sum(quantity) as totalnumber
from Product
left outer join OrderItem
on OrderItem.ProductID = Product.ProductID
group by Product.productID
order by totalnumber desc
limit 3