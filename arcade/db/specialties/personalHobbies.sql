CREATE PROCEDURE personalHobbies() BEGIN
SELECT name
from people_hobbies
where FIND_IN_SET('reading', hobbies)
    AND FIND_IN_SET('sports', hobbies)
ORDER BY name ASC;
END