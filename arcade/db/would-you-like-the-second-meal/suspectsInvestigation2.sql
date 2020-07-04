CREATE PROCEDURE suspectsInvestigation2() BEGIN
SELECT id,
    name,
    surname
from Suspect
WHERE NOT height > 170
    OR NOT (
        LEFT(name, 1) = "B"
        AND surname LIKE 'GRE_N'
    )
ORDER BY id;
END