CREATE PROCEDURE expressionsVerification()
BEGIN
    SELECT id,
        a,
        b,
        operation,
        c
    FROM expressions
    WHERE TRUE = CASE
        WHEN operation = "+" THEN (a + b) = c
        WHEN operation = "*" THEN (a * b) = c
        WHEN operation = "/" THEN (a / b) = c
        WHEN operation = "-" THEN (a - b) = c
    END;
END