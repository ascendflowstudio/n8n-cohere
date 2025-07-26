# Start from n8n base image
FROM n8nio/n8n:latest

# Set to root to install packages
USER root

# Install custom nodes
RUN npm install -g @n8n/n8n-nodes-langchain

# Set correct ownership for installed modules (VERY IMPORTANT)
RUN chown -R node:node /usr/local/lib/node_modules /usr/local/bin /usr/local/share

# Back to node user
USER node
