FROM n8nio/n8n:1.45.1

# Install LangChain nodes globally
RUN npm install -g --omit=dev --legacy-peer-deps @n8n/n8n-nodes-langchain

# Tell n8n to look in global node_modules for custom nodes
ENV N8N_CUSTOM_EXTENSIONS=/usr/local/lib/node_modules

# Optional: force healthcheck port for Railway
ENV N8N_PORT=5678
EXPOSE 5678

# Start n8n
CMD ["n8n"]
