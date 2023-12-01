SELECT departure_airport, COUNT(*) AS number_of_flights
FROM flights
WHERE departure_airport IN ('KZN', 'DME', 'OVB', 'IKT', 'LED', 'SVO')
GROUP BY departure_airport
ORDER BY number_of_flights DESC;
