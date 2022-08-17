CREATE PROCEDURE newsSubscribers()
BEGIN
        SELECT subscriber
        FROM full_year
        WHERE newspaper LIKE '%Daily%'
    UNION
        SELECT subscriber
        FROM half_year
        WHERE newspaper LIKE '%Daily%'
    ORDER BY SUBSTRING(subscriber, 1, 10) ASC;
END