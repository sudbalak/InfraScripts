import requests
from ratelimiter import RateLimiter

# Define rate limiter (e.g., max 5 requests per second)
rate_limiter = RateLimiter(max_calls=5, period=1)

# Server URL
url = "http://<Node-IP>:<NodePort>/"

# Simulate API requests
for i in range(20):
    with rate_limiter:
        response = requests.get(url)
        if response.status_code == 200:
            print(f"Request {i + 1}: Success | Response Time: {response.elapsed.total_seconds()} seconds")
        else:
            print(f"Request {i + 1}: Failure | HTTP {response.status_code}")