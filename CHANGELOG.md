## v1.0.2
* Added Dockerfile for containerization
* Updated .bumpversion.toml with new version 1.0.2
* Added GitHub Actions workflow to publish Docker image to Docker Hub
* Renamed and updated GitHub Actions workflow to publish package to PyPI
* Renamed and updated GitHub Actions workflow to use uv for building and testing package
* Updated README.md with instructions on running the server with Docker
* Added instructions on testing GitHub Actions locally in CONTRIBUTING.md

## v1.0.1
* bump version to 1.0.1 to fix error when publishing to PyPI due to broken version 1.0.0

## v1.0.0
* Added web search tool using Brave Search
* Updated README.md with correct GitHub Actions workflow URL
* Enhanced tool registration to include new web search tool
* Rename test file for web access tools to `test_url_text_fetcher_tools.py`
* Added more comprehensive tests for the web search tool Brave Search
* Added web search tool using DuckDuckGo Search

## v0.1.0
* Initial release
* Added web access tools for fetching URL text and page links
* Configured MCP server with SSE transport
* Added basic project structure and documentation
* Added tests for the web access tools
* Added pyproject.toml for package configuration
* Added README.md for project description and usage instructions
* Added CHANGELOG.md for release notes
* Added main.py as entry point
* Added .pre-commit-config.yaml for code quality checks
* Added workflow files for CI/CD pipelines that deliver to PyPI on Pull Request merge to the main branch
* Added bump-my-version configuration .bumpversion.toml for version management
* Added template files for GitHub issues and pull requests
* Added CONTRIBUTING.md for contribution guidelines
