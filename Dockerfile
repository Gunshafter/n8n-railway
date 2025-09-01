FROM node:20.19-bullseye

WORKDIR /app

# Install n8n globally inside the container
RUN npm install -g n8n

# Railway will inject $PORT at runtime
CMD ["sh", "-c", "export N8N_PORT=$PORT; n8n start"]
