CREATE PROCEDURE soccerPlayers() BEGIN
SELECT GROUP_CONCAT(results SEPARATOR '; ') AS players
FROM (
        SELECT CONCAT(
                first_name,
                ' ',
                surname,
                ' ',
                '#',
                player_number
            ) AS results
        FROM soccer_team
        GROUP BY first_name
        ORDER BY player_number ASC
    ) AS players;
END