# Use official lightweight Python image
FROM python:3.11-slim

# Set a non-root user
RUN useradd -m appuser
USER appuser

# Set working directory
WORKDIR /app

# Copy only necessary files
COPY --chown=appuser:appuser /app/* /app

# Install dependencies
RUN pip install --no-cache-dir flask

# Set the environment variable to avoid buffering
ENV PYTHONUNBUFFERED=1

# Expose port
EXPOSE 5000

# Run the application
CMD ["python", "SimpleTimeService.py"]
