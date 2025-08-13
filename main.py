from config import mcp

# import tools to make them available
from web_access.url_text_fetcher import fetch_url_text, fetch_page_links


def main():
    """launch mcp server"""
    mcp.run(transport="sse")


if __name__ == "__main__":
    main()
