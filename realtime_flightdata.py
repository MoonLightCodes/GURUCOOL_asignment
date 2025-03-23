response = requests.get(
    "https://api.flightaware.com/live/flights/AA100",
    headers={"x-apikey": "YOUR_API_KEY"}
)