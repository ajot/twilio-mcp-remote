# Twilio SMS MCP Server

This project provides a simple MCP server for sending SMS messages using Twilio.

## Features
- Send SMS messages via Twilio
- Validate phone numbers

## Requirements
- Python 3.8+
- Twilio account and credentials

## Setup
1. Clone the repository:
   ```bash
   git clone <your-repo-url>
   cd <your-repo-directory>
   ```
2. Create a virtual environment and activate it:
   ```bash
   python3 -m venv venv
   source venv/bin/activate
   ```
3. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```
4. Copy `.env.example` to `.env` and fill in your Twilio credentials:
   ```bash
   cp .env.example .env
   # Edit .env with your values
   ```

## Running Locally
```bash
python server.py
```

## Deployment (DigitalOcean App Platform)
- Ensure your code is pushed to GitHub.
- The app will be started using the command in the `Procfile`:
  ```
  web: gunicorn server:mcp --bind 0.0.0.0:8080
  ```
- Set your environment variables in the DigitalOcean dashboard.

## Environment Variables
- `TWILIO_ACCOUNT_SID`: Your Twilio Account SID
- `TWILIO_AUTH_TOKEN`: Your Twilio Auth Token
- `TWILIO_PHONE_FROM`: The Twilio phone number to send from
- `TWILIO_PHONE_TO`: Default phone number to send to

## License
MIT 