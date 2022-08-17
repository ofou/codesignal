CREATE PROCEDURE tableSecurity()
BEGIN
    CREATE OR REPLACE VIEW emp
    AS
    SELECT id, name, YEAR(date_joined) as date_joined, '-' as salary
    FROM employees
    ORDER BY id;

    SELECT id, name, date_joined, salary
    FROM emp
    ORDER BY id;
END
