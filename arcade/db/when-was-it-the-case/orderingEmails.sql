CREATE PROCEDURE orderingEmails() BEGIN
SELECT id,
    email_title,
    CASE
        WHEN size < pow(2, 10) THEN concat(0, ' Kb')
        WHEN size < pow(2, 20) THEN concat(floor(size / pow(2, 10)), ' Kb')
        WHEN size >= pow(2, 20) THEN concat(floor(size / pow(2, 20)), ' Mb')
    END as short_size
from emails
ORDER BY size DESC;
END