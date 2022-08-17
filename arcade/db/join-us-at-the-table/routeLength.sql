CREATE PROCEDURE routeLength()
BEGIN
    SELECT ROUND(
        SUM(ST_DISTANCE(POINT(c1.x, c1.y), POINT(c2.x, c2.y))),
        9
    ) as total
    FROM cities as c1,
        cities as c2
    WHERE c1.id = c2.id + 1
    ORDER BY c1.id,
    c2.id;
END