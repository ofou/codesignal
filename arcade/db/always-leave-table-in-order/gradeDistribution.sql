CREATE PROCEDURE gradeDistribution()
BEGIN
    select Name,
        ID
    from Grades
    WHERE (
        Final > (Midterm1 * 0.25 + Midterm2 * 0.25 + Final * 0.50)
        and Final > (Midterm1 * 0.5 + Midterm2 * 0.5)
    )
    GROUP BY id
    ORDER BY SUBSTRING(name, 1, 3) ASC,
    id ASC;
END