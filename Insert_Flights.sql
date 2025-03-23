INSERT INTO Flights VALUES 
  ('LH', '123', 'FRA', 'JFK', '2024-01-01 10:00:00', '2024-01-01 15:00:00'),
  ('LH', '456', 'MUC', 'LAX', '2024-01-01 12:00:00', '2024-01-01 20:00:00');
-- Add 8 more flights...

INSERT INTO FlightStatus VALUES 
  ('LH', '123', NOW(), 'Delayed', 130),
  ('LH', '456', NOW(), 'On Time', 0);