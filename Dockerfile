# Use a non-slim Python image to avoid missing dependencies
FROM python:3.8

# Set the working directory
WORKDIR /app

# Copy only the requirements.txt file first for caching
COPY requirements.txt /app/

# Install the required dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . /app

# Expose the port the app will run on
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]

