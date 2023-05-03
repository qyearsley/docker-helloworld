# Use an official Python 3 runtime as a parent image.
FROM python:3

# Set the working directory to /app.
WORKDIR /app

# Copy the current directory contents into the container at /app.
COPY . /app

# Install any needed Python packages specified in requirements.txt.
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 80 available to the world outside this container.
EXPOSE 80

# Define environment variable NAME.
ENV NAME World

# Run app.py when the container launches.
CMD ["python", "app.py"]
