# Use official lightweight Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Install Flask
RUN pip install Flask

# Copy application code
COPY app.py .

# Expose port 8080 for Cloud Run / GCE
EXPOSE 8080

# Start the app
CMD ["python", "app.py"]
