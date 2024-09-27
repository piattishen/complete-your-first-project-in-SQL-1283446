-- Insert new customer into Customer table
-- select * from Customer
insert into Customer(
  CustomerID,
  FirstName,
  LastName,
  Email,
  Phone,
  Address,
  City,
  State,
  Zipcode
)
values (
  1100,
  'Jane',
  'Paterson',
  'Jane.Paterson@gmail.com',
  '(912)999-9999',
  '111 bb',
  'Kanses City',
  'KA',
  '66666'
)