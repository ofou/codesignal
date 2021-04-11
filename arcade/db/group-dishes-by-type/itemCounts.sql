CREATE PROCEDURE itemCounts()
BEGIN
    SELECT item_name,
        item_type,
        COUNT(item_name) as item_count
    FROM availableItems
    GROUP BY item_name,
    item_type
    ORDER BY item_type ASC,
    item_name ASC;
END