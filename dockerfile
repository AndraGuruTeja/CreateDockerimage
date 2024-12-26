# Use an existing image as a base
FROM ubuntu:latest

# Set the working directory inside the container
WORKDIR /app

# Copy files from your local system to the container
COPY . /app

# Install any required packages
RUN apt-get update && apt-get install -y python3

# Define the command to run when the container starts
CMD ["python3", "--version"]
