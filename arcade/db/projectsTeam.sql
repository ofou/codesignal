CREATE PROCEDURE projectsTeam()
BEGIN
	SELECT name from projectLog group by name ORDER BY name ASC;
END