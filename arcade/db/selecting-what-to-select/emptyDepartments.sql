CREATE PROCEDURE emptyDepartments()
BEGIN
    SELECT dep_name
    FROM departments
    WHERE NOT EXISTS (
    SELECT *
    FROM employees
    WHERE departments.id = employees.department);
END