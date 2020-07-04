CREATE PROCEDURE nullIntern() BEGIN
SELECT COUNT(id) as number_of_nulls
from departments
WHERE isnull(description)
    or REPLACE(lower(description), ' ', '') in ('null', 'nil', '-');
END