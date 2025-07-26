FROM n8nio/n8n:1.45.1

# Optional: install curl, git if debugging
RUN apt-get update && apt-get install -y curl git

# Install LangChain nodes safely
RUN npm install -g --omit=dev --legacy-peer-deps @n8n/n8n-nodes-langchain

EXPOSE 5678
CMD ["n8n"]
