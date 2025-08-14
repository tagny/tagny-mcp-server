# tagny-mcp-server
An MCP server with web search, URL text fetching, and more tools to enhance locally served LLMs.

[![GitHub License](https://img.shields.io/github/license/tagny/tagny-mcp-server)](LICENSE)
[![GitHub Actions Workflow](https://github.com/tagny/tagny-mcp-server/actions/workflows/build.yml/badge.svg)](https://github.com/yourusername/tagny-mcp-server/actions/workflows/build.yml)
[![PyPI Version](https://img.shields.io/pypi/v/tagny-mcp-server)](https://pypi.org/project/tagny-mcp-server/)
[![Code Quality](https://img.shields.io/badge/code%20quality-ruff-blue)](https://github.com/astral-sh/ruff)

## Features

- Fetch plain text content from URLs
- Extract all links from a webpage
- Designed to work with locally served LLMs via MCP protocol

## Installation

* from source
```bash
uv pip install -e .

# with dev dependencies
uv pip install -e ".[dev]"
```
* from PyPI repository
```sh
pip install tagny-mcp-server
```
## Usage

Start the MCP server:

* from source code:
```sh
uv run -m tagny_mcp_server
```
* after proper installation:
  - as described in the pyproject.toml at `project.scripts`, you can run the with the default arguments :
```sh
tagny-mcp-server
```
  - customize the arguments by running like this for example:
```sh
# see the help
uv run -m tagny_mcp_server --help

# see the version
uv run -m tagny_mcp_server --version

# change the default port
uv run -m tagny_mcp_server --port 5002
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

Tests are located in `tests/` and can be run with pytest:

```bash
pytest
```

Example client usage is shown in `scripts/client.py`.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome! Please read the [CONTRIBUTING.md](CONTRIBUTING.md) file for details on our code of conduct and the process for submitting pull requests.

## Changelog

See [CHANGELOG.md](CHANGELOG.md) for a history of changes to this project.

## Code Quality

This project uses pre-commit hooks to maintain code quality. Install them with:

```bash
pre-commit install
```

The following tools are used:
- black (code formatting)
- flake8 (linting)
- isort (import sorting)
- detect-secrets (secret detection)
- ruff (linting and fixing)

For more information, see [.pre-commit-config.yaml](.pre-commit-config.yaml).

## CI/CD

This project uses GitHub Actions for continuous integration and deployment:

- [Build workflow](.github/workflows/build.yml) - runs tests and code quality checks
- [Publish workflow](.github/workflows/publish.yml) - publishes to PyPI on release

For more information, see [.github/workflows](.github/workflows).
