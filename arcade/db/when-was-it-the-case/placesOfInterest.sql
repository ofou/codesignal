CREATE PROCEDURE placesOfInterest()
BEGIN
    SELECT country,
        SUM(
        CASE
            WHEN leisure_activity_type = 'Adventure Park' THEN number_of_places
            ELSE 0
        END
    ) as adventure_park,
        SUM(
        CASE
            WHEN leisure_activity_type = 'Golf' THEN number_of_places
            ELSE 0
        END
    ) as golf,
        SUM(
        CASE
            WHEN leisure_activity_type = 'River cruise' THEN number_of_places
            ELSE 0
        END
    ) as river_cruise,
        SUM(
        CASE
            WHEN leisure_activity_type = 'Kart racing' THEN number_of_places
            ELSE 0
        END
    ) as kart_racing
    FROM countryActivities
    group by country
    ORDER BY country ASC;
END