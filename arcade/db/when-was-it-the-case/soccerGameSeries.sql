CREATE PROCEDURE soccerGameSeries()
BEGIN
    SELECT (
        CASE
            WHEN SUM(first_team_score) > SUM(second_team_score) THEN 1
            WHEN SUM(first_team_score) < SUM(second_team_score) THEN 2
            WHEN SUM(first_team_score) = SUM(second_team_score) THEN (
                CASE
                    WHEN SUM(first_team_score) - SUM(second_team_score) > 0 THEN 1
                    WHEN SUM(second_team_score) - SUM(first_team_score) > 0 THEN 2
                    WHEN SUM(second_team_score) - SUM(first_team_score) = 0 THEN (
                        CASE
                            WHEN SUM(
                                CASE
                                    WHEN match_host = 2 then first_team_score
                                END
                            ) > SUM(
                                CASE
                                    WHEN match_host = 1 then second_team_score
                                END
                            ) THEN 1
                            WHEN SUM(
                                CASE
                                    WHEN match_host = 2 then first_team_score
                                END
                            ) < SUM(
                                CASE
                                    WHEN match_host = 1 then second_team_score
                                END
                            ) THEN 2
                            WHEN SUM(
                                CASE
                                    WHEN match_host = 2 then first_team_score
                                END
                            ) = SUM(
                                CASE
                                    WHEN match_host = 1 then second_team_score
                                END
                            ) THEN 0
                        END
                    )
                END
            ) WHEN SUM(first_team_score) = SUM(second_team_score) THEN 1 ELSE 2
        END
    ) as winner
    FROM scores;
END