-- Remove null values from customer table
select FirstName, LastName, Phone, Email
from Customer
where Email is not Null AND
      Phone is not Null