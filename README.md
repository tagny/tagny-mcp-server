# tagny-mcp-server
An MCP server with web search, URL text fetching, and more tools to enhance locally served LLMs.

## Features

- Fetch plain text content from URLs
- Extract all links from a webpage
- Designed to work with locally served LLMs via MCP protocol

## Installation

```bash
pip install .
```

## Usage

Start the MCP server:

```bash
uv run main.py
```

The server will run using Server-Sent Events (SSE) transport.

## Tools

### `fetch_url_text`
Downloads and parses HTML content from a URL, returning only the visible text.

### `fetch_page_links`
Returns a list of all hyperlinks found on a webpage.

## Project Structure

- `main.py` - Entry point that launches the MCP server
- `config.py` - MCP server configuration
- `web_access/` - Contains web access tools:
  - `url_text_fetcher.py` - Implements URL text fetching and link extraction
- `pyproject.toml` - Project metadata and dependencies
- `scripts/client.py` - Example client script for testing the server

## Dependencies

- `beautifulsoup4` - HTML parsing
- `fastmcp` - MCP server framework
- `requests` - HTTP requests

## Testing

Tests are located in `tests/test_web_access_tools.py` and can be run with pytest:

```bash
pytest tests/test_web_access_tools.py
```

Example client usage is shown in `scripts/client.py`.
