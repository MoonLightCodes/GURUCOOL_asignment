import requests
import psycopg2

# Fetch flight data from AviationStack
response = requests.get(
    "http://api.aviationstack.com/v1/flights",
    params={"access_key": "YOUR_KEY", "flight_number": "LH123"}
)
data = response.json()

# Insert into PostgreSQL
conn = psycopg2.connect("dbname=flights user=postgres")
cursor = conn.cursor()
cursor.execute("""
    INSERT INTO FlightStatus (airline_code, flight_number, status, delay)
    VALUES (%s, %s, %s, %s)
""", (data['airline']['code'], data['flight']['number'], data['status'], data['delay']))
conn.commit()