CREATE PROCEDURE monthlyScholarships()
BEGIN
SELECT id, SUM(scholarship)/12 as "scholarship" FROM scholarships GROUP BY id;
END