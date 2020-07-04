DROP PROCEDURE IF EXISTS legsCount;
CREATE PROCEDURE legsCount()
SELECT sum(
        CASE
            WHEN type = "human" then 2
            WHEN type = "dog" then 4
            WHEN type = "cat" then 4
        END
    ) as summary_legs
FROM creatures
ORDER BY id;