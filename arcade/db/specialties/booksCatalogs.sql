CREATE PROCEDURE booksCatalogs()
BEGIN
    SELECT ExtractValue(xml_doc, '/catalog/book[1]/author[1]') as author
    FROM catalogs
    ORDER BY author;
END