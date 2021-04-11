CREATE PROCEDURE dateFormatting()
BEGIN
    SELECT date_format(date_str, '%Y-%m-%d') as date_iso
    FROM documents
    ORDER by id;
END