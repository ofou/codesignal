CREATE PROCEDURE pastEvents()
BEGIN
    SELECT name,
        event_date
    FROM Events
    WHERE (
        SELECT TO_DAYS(event_date) -8
    FROM Events
    ORDER BY (event_date) DESC
        LIMIT 1
    ) < TO_DAYS
    (event_date)
    and
    (
        SELECT TO_DAYS(event_date)
    FROM Events
    ORDER BY (event_date) DESC
        LIMIT 1
    ) <> TO_DAYS
    (event_date)
ORDER BY event_date DESC;
END