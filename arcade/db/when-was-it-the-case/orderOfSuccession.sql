CREATE PROCEDURE orderOfSuccession() BEGIN
SELECT CASE
        WHEN gender = 'F' THEN concat('Queen ', name)
        WHEN gender = 'M' THEN concat('King ', name)
    END as name
FROM Successors
ORDER BY birthday ASC;
END