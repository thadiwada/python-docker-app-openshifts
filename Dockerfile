# Use an official Python runtime as a parent image
FROM python:latest

MAINTAINER MANIVANNAN.C
# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt 
RUN pip install newrelic

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME ItrainWorld

# Run app.py when the container launches
CMD ["python", "app.py"]
