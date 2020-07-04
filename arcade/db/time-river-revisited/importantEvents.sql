CREATE PROCEDURE importantEvents() BEGIN
SELECT *
FROM events
ORDER BY CASE
        WHEN weekday(event_date) = 0 THEN 0
        WHEN weekday(event_date) = 1 THEN 1
        WHEN weekday(event_date) = 2 THEN 2
        WHEN weekday(event_date) = 3 THEN 3
        WHEN weekday(event_date) = 4 THEN 4
        WHEN weekday(event_date) = 5 THEN 5
        WHEN weekday(event_date) = 6 THEN 6
    END,
    participants DESC;
END