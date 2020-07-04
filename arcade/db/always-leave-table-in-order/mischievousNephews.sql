CREATE PROCEDURE mischievousNephews() BEGIN
select WEEKDAY(mischief_date) as weekday,
    mischief_date,
    author,
    title
from mischief
ORDER BY weekday,
    FIELD(author, "Huey", "Dewey", "Louie"),
    mischief_date,
    title;
END