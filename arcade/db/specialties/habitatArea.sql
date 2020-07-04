CREATE PROCEDURE habitatArea() BEGIN
SELECT st_area(
        st_ConvexHull(
            st_GeomFromText(
                CONCAT('Multipoint(', GROUP_CONCAT(x, " ", y), ')')
            )
        )
    ) as area
from places;
END