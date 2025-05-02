# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Set environment variables to avoid OpenCV GUI issues
ENV DISPLAY=:0

# Set the command to run the application
CMD ["python", "your_script.py", "--input", "0"]
