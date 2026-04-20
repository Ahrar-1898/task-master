# Base image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements first (better caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy all files
COPY . .

# Expose port
EXPOSE 5000

# Run app
CMD ["python", "app.py"]

# to build, run in terminal like:- Docker build -t Ahrar123/anyname .,created images in dockers.

# then run,docker run -p 8888:5000 
