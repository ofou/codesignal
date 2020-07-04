CREATE PROCEDURE companyEmployees() BEGIN
SELECT *
FROM departments,
    employees
ORDER BY dep_name,
    emp_name asc;
END