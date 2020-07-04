CREATE PROCEDURE marketReport() BEGIN
SELECT country,
    COUNT(DISTINCT competitor) AS competitors
FROM foreignCompetitors
GROUP BY country
UNION
SELECT "Total:" AS country,
    COUNT(competitor) AS competitors
FROM foreignCompetitors;
END