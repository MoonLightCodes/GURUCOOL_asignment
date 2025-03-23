Part 1: Theory Questions

1. Database Design
Proposed Schema (with corrections for normalization):--filename: schema.sql
Data Accuracy:

Constraints: Use NOT NULL, CHECK (e.g., departure < arrival), and UNIQUE.

Foreign Keys: Ensure referential integrity (e.g., departure_airport references Airports.iata_code).

Validation: Validate API data against ISO standards (e.g., IATA/ICAO codes).

Scalability:

Indexing: Index departure_airport, status_time, and delay for faster querying.

Partitioning: Partition FlightStatus by status_time (e.g., monthly partitions).

2. Data Collection Strategy
Airport Data:

Use OpenFlights or AviationStack APIs to fetch IATA/ICAO codes, locations, and metadata.

Real-Time Flight Data:

Integrate FlightAware API for live updates. Example API call:-- file name(realtime_flightdata.py)
Handling Data Issues:

Missing Data: Use historical averages or nearest-neighbor imputation.

Inconsistent Data: Validate against existing records (e.g., invalid IATA codes trigger alerts).

Delays: Retry failed API calls with exponential backoff.

3. Flight Monitoring and Claim Identification
System Design:

Real-Time Pipeline: Use Apache Kafka to ingest flight updates and Apache Flink to detect delays >2 hours.

Alerts: Trigger SMS/email alerts via Twilio or SendGrid.

Storage: Use Apache Cassandra for high write throughput (time-series data).

Query for Delayed Flights:(filename--Query_for_Delayed_Flights.sql)
4. Future API Development
API Design (RESTful):

Endpoints:

GET /flights?date=2024-01-01&airport=FRA

GET /delays?threshold=120

Security: OAuth 2.0, rate limiting via Redis.

Availability: Load balancing with NGINX, caching using Redis.

Monitoring: Track uptime with Prometheus and Grafana.

Part 2: Practical Tasks

1. Airport Database Creation
SQL Script:(filename-- airportDB.sql)
2. Data Insertion and Querying
Insert Flights:(filename--insert_FLights.sql)
Queries:(filename-- Query.sql)
3. Data Collection Simulation (Python file name --Data_Collection_Simulation.py)
Evaluation Notes:

Database Design: Normalized schema with corrections for real-world use cases.

Data Collection: Practical use of APIs and Python for ETL.

Code Quality: Clean, commented SQL and Python with error handling.
