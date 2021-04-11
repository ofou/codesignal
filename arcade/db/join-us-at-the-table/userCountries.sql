CREATE PROCEDURE userCountries()
BEGIN
    SELECT id,
        IFNULL(cities.country, 'unknown') as country
    FROM users
        LEFT JOIN cities ON users.city = cities.city
    order by id;
END