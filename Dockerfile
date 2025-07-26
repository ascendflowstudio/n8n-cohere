FROM n8nio/n8n:1.45.1

# Install LangChain nodes
RUN npm install -g @n8n/n8n-nodes-langchain

# Expose default port
EXPOSE 5678

# Start n8n
CMD ["n8n"]
