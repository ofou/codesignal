CREATE PROCEDURE mostExpensive() BEGIN
select name
from Products
group by id
order by sum(price * quantity) desc,
    name ASC
LIMIT 1;
END