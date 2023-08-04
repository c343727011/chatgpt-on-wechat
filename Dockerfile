
FROM ghcr.io/zhayujie/chatgpt-on-wechat:latest# Expose port 80
EXPOSE 80

# Set health

check to verify if the container is running
HEALTHCHECK CMD curl -f http://localhost:${PORT:-80}/ || exit 1

# Add entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Set the entrypoint command
ENTRYPOINT ["/entrypoint.sh"]
