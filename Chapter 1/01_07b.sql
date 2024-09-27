-- Create new month columns
select *,
MONTH(CreationDate) as Monthnumber,
Monthname(CreationDate) as Monthname
from Orders