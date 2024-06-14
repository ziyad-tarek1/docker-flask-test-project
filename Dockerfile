# Use Python image from Docker Hub
FROM python:latest

# Create a non-root user
RUN useradd -m -s /bin/bash flsk-admin

# Set the working directory
WORKDIR /home/flsk-admin/

# Copy the requirements file and install dependencies
COPY req.txt .
RUN pip install -r req.txt

# Copy the Python application file
COPY hellofls.py .

# Expose port 5000 for Flask application
EXPOSE 5000

# Change ownership of the working directory to the new user
RUN chown -R flsk-admin:flsk-admin /home/flsk-admin/

# Switch to the non-root user
USER flsk-admin

# Run the Python application
CMD ["python", "hellofls.py"]
