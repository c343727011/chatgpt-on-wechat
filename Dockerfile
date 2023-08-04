
FROM ghcr.io/zhayujie/chatgpt-on-wechat:latest  # Pull the base image

# Expose port 80
EXPOSE 80

# Set health check to verify if the container is running
HEALTHCHECK CMD curl -f http://localhost:${PORT:-80}/ || exit 1

# Add entrypoint script
COPY entrypoint.sh /entrypoint.sh  # Copy the entrypoint script to the container
RUN chmod +x /entrypoint.sh  # Give executable permissions to the entrypoint script

# Set the entrypoint command
ENTRYPOINT ["/entrypoint.sh"]  # Set the entrypoint command to run the entrypoint script
