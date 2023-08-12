# Use a lightweight base image
FROM alpine:3.14

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled or packaged application files into the container
COPY target/* /app/

# Expose the port your application listens on
EXPOSE 8080

# Command to run your application
CMD ["./your-app-binary"]
