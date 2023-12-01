SELECT airport_code, city->>'ru' AS city
FROM airports_data
WHERE city->>'ru' IN ('Казань', 'Москва')
ORDER BY airport_code DESC;