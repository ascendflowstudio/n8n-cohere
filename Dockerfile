FROM n8nio/n8n:latest

USER root

RUN mkdir -p /home/node/.n8n/custom
WORKDIR /home/node/.n8n/custom
RUN npm install @n8n/n8n-nodes-langchain

ENV PORT=80
EXPOSE 80
HEALTHCHECK --interval=10s --timeout=3s --retries=3 CMD curl -f http://localhost/ || exit 1

USER node
