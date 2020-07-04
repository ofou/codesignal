CREATE PROCEDURE localCalendar() BEGIN
SELECT event_id,
    (
        CASE
            WHEN hours = 24 then DATE_FORMAT(
                date + INTERVAL timeshift MINUTE,
                "%Y-%m-%d %H:%i"
            )
            WHEN hours = 12 then DATE_FORMAT(
                date + INTERVAL timeshift MINUTE,
                "%Y-%m-%d %h:%i %p"
            )
        END
    ) as formatted_date
FROM events
    NATURAL JOIN settings
ORDER BY event_id;
END