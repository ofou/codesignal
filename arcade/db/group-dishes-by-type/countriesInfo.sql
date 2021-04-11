CREATE PROCEDURE countriesInfo()
BEGIN
    SELECT count(name) as number,
        sum(population) / count(name) as average,
        sum(population) as total
    FROM countries;
END