FROM node:20.19-bullseye
WORKDIR /app
COPY . .
RUN npm ci --omit=dev
CMD ["sh", "-c", "export N8N_PORT=$PORT; n8n start"]

