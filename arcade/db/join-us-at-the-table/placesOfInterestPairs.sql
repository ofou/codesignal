CREATE PROCEDURE placesOfInterestPairs()
BEGIN
    SELECT place1,
        place2
    FROM (
        SELECT a.name as place1,
            a.x as x1,
            a.y as y1,
            b.name as place2,
            b.x as x2,
            b.y as y2,
            (
                POWER(((POWER((b.x - a.x), 2)) +(POWER((b.y - a.y), 2))), 0.5)
            ) AS distance
        FROM sights a,
            sights b
        WHERE a.name < b.name
            and (
                POWER(((POWER((b.x - a.x), 2)) +(POWER((b.y - a.y), 2))), 0.5)
            ) < 5
    ) as table2
    ORDER BY place1,
    place2;
END