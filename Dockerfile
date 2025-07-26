FROM n8nio/n8n:latest

USER root

# Create a folder for custom nodes
RUN mkdir -p /home/node/.n8n/custom

# Set workdir and install locally
WORKDIR /home/node/.n8n/custom
RUN npm install @n8n/n8n-nodes-langchain

USER node
