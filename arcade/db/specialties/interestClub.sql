CREATE PROCEDURE interestClub()
SELECT name
FROM people_interests
WHERE interests & 8
    AND interests & 1
ORDER BY name