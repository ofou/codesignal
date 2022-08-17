CREATE PROCEDURE currencyCodes()
BEGIN
    DELETE FROM currencies
WHERE NOT CHAR_LENGTH(code) = 3;
    SELECT *
    FROM currencies
    ORDER BY code;
END