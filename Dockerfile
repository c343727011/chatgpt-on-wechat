
FROM ghcr.io/zhayujie/chatgpt-on-wechat:latest

# Expose port 80
EXPOSE 80

ENTRYPOINT ["/entrypoint.sh"]
