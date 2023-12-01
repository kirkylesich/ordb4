SELECT f.flight_no, f.scheduled_departure, COUNT(t.passenger_id) AS number_of_passengers
FROM flights f
JOIN ticket_flights tf ON f.flight_id = tf.flight_id
JOIN tickets t ON tf.ticket_no = t.ticket_no
GROUP BY f.flight_no, f.scheduled_departure
HAVING COUNT(t.passenger_id) BETWEEN 27 AND 90
ORDER BY f.flight_no, f.scheduled_departure, number_of_passengers DESC;