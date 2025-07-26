FROM n8nio/n8n:latest

USER root

# Install the Cohere LangChain node
RUN npm install -g @n8n/n8n-nodes-langchain

USER node
Add Dockerfile to enable Cohere LangChain support
