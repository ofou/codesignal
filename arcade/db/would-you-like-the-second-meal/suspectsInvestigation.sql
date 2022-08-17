CREATE PROCEDURE suspectsInvestigation()
BEGIN
    SELECT id,
        name,
        surname
    from Suspect
    WHERE (
        height <= 170
        AND LEFT(name, 1) = "B"
    )
        AND surname LIKE 'GRE_N'
    ORDER BY id;
END