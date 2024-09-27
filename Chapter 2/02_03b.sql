-- Determine which sales people made no sales
-- select * from Salesperson
-- select * from Orders 
SELECT
S.salespersonID,
FirstName,
LastName
from Salesperson S
left outer join Orders 
  on Orders.SalespersonID = S.SalespersonID
where Orders.OrderID is Null