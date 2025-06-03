FROM python:3.10-slim

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the code
COPY . .

# Expose port 8080 for DigitalOcean
EXPOSE 8080

# Start the MCP server
CMD ["fastmcp", "run", "server.py:mcp"] 
# CMD ["python", "server.py"]