CREATE PROCEDURE movieDirectors()
BEGIN
    SELECT director
    FROM moviesInfo
    WHERE (moviesInfo.year > 2000)
    GROUP BY director
    HAVING SUM(moviesInfo.oscars) > 2
    ORDER BY director ASC;
END