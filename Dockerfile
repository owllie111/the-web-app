# Use an official Python runtime as a parent image
FROM python:3.9-slim
# Set the working directory in the container
WORKDIR /app
# Copy the current directory contents into the container
COPY . /app

COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt
# Make port 5000 available to the world outside this container
EXPOSE 5000
# Define environment variable
ENV NAME=World
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
# Run app.py when the container launches
CMD ["python", "app.py"]

