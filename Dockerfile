# Use an appropriate base image for your application
FROM ubuntu:20.04

# Set environment variables if needed
ENV APP_ENV=production

# Set the working directory inside the container
WORKDIR /app

# Copy application files into the container
COPY . /app

# Install any necessary dependencies or runtime requirements
RUN apt-get update && \
    apt-get install -y \
    your-dependency1 \
    your-dependency2 \
    && apt-get clean

# Expose the port your application listens on
EXPOSE 80

# Command to run your application
CMD ["your-start-command"]
