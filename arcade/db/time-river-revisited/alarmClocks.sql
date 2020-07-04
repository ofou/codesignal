CREATE PROCEDURE alarmClocks() BEGIN WITH RECURSIVE Date_Ranges AS (
    SELECT input_date as alarm_date
    FROM userInput
    UNION ALL
    SELECT alarm_date + interval 7 day
    FROM Date_Ranges
    WHERE year(alarm_date) = (
            SELECT YEAR(input_date)
            FROM userInput
        )
)
SELECT *
FROM Date_Ranges
WHERE year(alarm_date) = (
        SELECT YEAR(input_date)
        FROM userInput
    )
ORDER BY alarm_date ASC;
END