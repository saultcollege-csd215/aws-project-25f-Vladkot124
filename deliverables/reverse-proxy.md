nginx is used as a reverse proxy in front of the Flask app.

Purpose:
nginx listens on port 80 (HTTP) and forwards requests to the Flask app running on a local port (for example 127.0.0.1:5000). This makes the app accessible from a browser without exposing the Flask port directly.

Benefits:
- Security: only nginx is exposed to the internet; the Flask app can stay internal.
- Reliability: nginx is stable and can keep handling connections while the app restarts.
- Performance: nginx handles many client connections efficiently.
- Flexibility: nginx can later add HTTPS, caching, or load balancing if needed.
