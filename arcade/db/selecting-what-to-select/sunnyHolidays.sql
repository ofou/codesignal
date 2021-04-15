CREATE PROCEDURE sunnyHolidays()
BEGIN
    SELECT holiday_date
    FROM holidays, weather
    WHERE holidays.holiday_date = weather.sunny_date;
END