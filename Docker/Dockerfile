# Use Python 3.9 as the base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file (we'll create this next)
COPY requirements.txt .

# Install the Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy our app code
COPY app.py .

# Expose the port our app runs on
EXPOSE 3000

# Command to run our app
CMD ["python", "app.py"]