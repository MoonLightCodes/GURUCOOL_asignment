SELECT * FROM FlightStatus 
WHERE delay > 120 
  AND status_time >= NOW() - INTERVAL '24 HOURS';