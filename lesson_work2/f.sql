SELECT passenger_name AS name_or_airport FROM tickets
UNION ALL
SELECT airport_name AS name_or_airport FROM airports
ORDER BY name_or_airport DESC;
