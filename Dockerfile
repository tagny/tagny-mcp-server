# Use uv's official Python image as base
FROM ghcr.io/astral-sh/uv:python3.11-alpine
# FROM alpine

# set labels
LABEL org.opencontainers.image.created="2025-08-14T21:30:38.320Z"
LABEL org.opencontainers.image.description="An MCP server with web search, URL text fetching, and more tools to enhance locally served LLMs."
LABEL org.opencontainers.image.licenses="MIT"
LABEL org.opencontainers.image.revision="dcea882c4d8d8fcb5b2f558a461e86be3ef35fc7 "
LABEL org.opencontainers.image.source="https://github.com/tagny/tagny-mcp-server"
LABEL org.opencontainers.image.title="tagny-mcp-server"
LABEL org.opencontainers.image.url="https://github.com/tagny/tagny-mcp-server"
LABEL org.opencontainers.image.version="1.0.2"
LABEL org.opencontainers.image.vendor="tagny"
LABEL org.opencontainers.image.authors="tagny https://github.com/tagny"

# Set working directory
WORKDIR /app

# Copy application code
COPY src ./src

# Copy pyproject.toml and README.md for dependency resolution
COPY pyproject.toml README.md ./

# Install project dependencies (including dev deps)
RUN uv pip install --system -e .

# Set default environment variables for MCP server arguments
ENV MCP_TRANSPORT=sse
ENV MCP_HOST=0.0.0.0
ENV MCP_PORT=8000
ENV MCP_PATH=/mcp

# Expose the port
EXPOSE $MCP_PORT

# Run the server with customizable args from env vars
CMD ["sh", "-c", "uv run -m tagny_mcp_server --transport $MCP_TRANSPORT --host $MCP_HOST --port $MCP_PORT --path $MCP_PATH"]
