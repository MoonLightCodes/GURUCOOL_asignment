-- Create Tables
CREATE TABLE Airports (
    iata_code CHAR(3) PRIMARY KEY,
    icao_code CHAR(4) NOT NULL UNIQUE,
    country VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL,
    latitude DECIMAL(9,6) NOT NULL,
    longitude DECIMAL(9,6) NOT NULL
);

-- Insert 5 German Airports
INSERT INTO Airports VALUES 
  ('FRA', 'EDDF', 'Germany', 'Frankfurt', 50.033333, 8.570556),
  ('MUC', 'EDDM', 'Germany', 'Munich', 48.353889, 11.786111),
  ('BER', 'EDDB', 'Germany', 'Berlin', 52.366667, 13.503333),
  ('HAM', 'EDDH', 'Germany', 'Hamburg', 53.630389, 9.988228),
  ('STR', 'EDDS', 'Germany', 'Stuttgart', 48.689878, 9.221964);