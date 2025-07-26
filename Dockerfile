FROM n8nio/n8n:latest

USER root

# Install the Cohere LangChain node locally
RUN mkdir -p /home/node/.n8n/custom
WORKDIR /home/node/.n8n/custom
RUN npm install @n8n/n8n-nodes-langchain

# EXPOSE port so Railway knows what to check
EXPOSE 5678

# Add a working healthcheck
HEALTHCHECK --interval=10s --timeout=3s --retries=3 CMD curl -f http://localhost:5678/ || exit 1

USER node
