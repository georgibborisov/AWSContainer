FROM python:3.9-slim-buster

# Set up working directory
WORKDIR /app

# Copy requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy source code
COPY . .

# Expose the port that the application will run on
EXPOSE 8000

# Run the application
CMD ["python", "app.py"]