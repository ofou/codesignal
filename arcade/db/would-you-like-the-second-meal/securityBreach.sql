CREATE PROCEDURE securityBreach()
BEGIN
    SELECT first_name,
        second_name,
        attribute
    FROM users
    WHERE attribute LIKE CONCAT(
        '_%*%',
        BINARY(first_name),
        '*_',
        BINARY(second_name),
        '*%%'
    ) ESCAPE '*'
    ORDER BY attribute ASC;
END