-- All flights from Frankfurt
SELECT * FROM Flights 
WHERE departure_airport = 'FRA';

-- Flights delayed by >2 hours
SELECT * FROM FlightStatus 
WHERE delay > 120;

-- Flight details by number
SELECT * FROM Flights 
WHERE airline_code = 'LH' AND flight_number = '123';