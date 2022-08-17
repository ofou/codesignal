CREATE PROCEDURE monthlyScholarships()
BEGIN
    SELECT id,
        SUM(scholarship) / 12 AS "scholarship"
    FROM scholarships
    GROUP BY id;
END