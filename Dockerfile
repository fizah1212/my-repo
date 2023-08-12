# Use an appropriate base image for your application
FROM ubuntu:20.04

# Set environment variables if needed
ENV APP_ENV=production

# Set the working directory inside the container
WORKDIR /app

# Update package lists and install dependencies
RUN apt-get update && \
    apt-get install -y \
    your-dependency1 \
    your-dependency2 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copy application files into the container
COPY . /app

# Expose the port your application listens on
EXPOSE 80

# Command to run your application
CMD ["your-start-command"]
