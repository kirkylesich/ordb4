SELECT airport_code || ', ' || city || ', ' || coordinates AS "полная информация"
FROM airports
ORDER BY "полная информация";