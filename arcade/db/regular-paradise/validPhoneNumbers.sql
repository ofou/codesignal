CREATE PROCEDURE validPhoneNumbers()
BEGIN
    SELECT name,
        surname,
        phone_number
    from phone_numbers
    WHERE phone_number
    REGEXP
    ('^((1-)|\\(1\\))[0-9]{3}-[0-9]{3}-[0-9]{4}$')
ORDER BY surname;
END