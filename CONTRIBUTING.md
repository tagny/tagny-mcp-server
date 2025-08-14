# Contributing to tagny-mcp-server

Thank you for your interest in contributing to tagny-mcp-server! This project welcomes contributions from everyone. By participating in this project, you agree to abide by our Code of Conduct.

## How to Contribute

### Reporting Issues

If you find a bug or have a feature request, please open an issue on the GitHub repository. When reporting issues, include:

- A clear description of the problem
- Steps to reproduce the issue
- Expected behavior
- Environment details (Python version, OS, etc.)

Please follow available templates:
- [Feature Request Template](.github/ISSUE_TEMPLATE/feature_request.md)
- [Bug Report Template](.github/ISSUE_TEMPLATE/bug_report.md)
- [Custom Request Template](.github/ISSUE_TEMPLATE/custom.md)

### Pull Requests

We welcome pull requests that improve the project. Before submitting a pull request, please:

1. Fork the repository
2. Create a new branch for your changes
3. Make your changes
4. Run tests to ensure no existing functionality is broken
5. Add new tests if applicable
6. Update documentation as needed

### Code Style

This project uses several tools to maintain code quality:

- **Black**: Code formatting
- **Flake8**: Linting
- **isort**: Import sorting
- **ruff**: Linting and fixing
- **detect-secrets**: Secret detection

Install pre-commit hooks to automatically check your changes:
```bash
pre-commit install
```

### Testing

Run tests with pytest:
```bash
pytest
```

### CI/CD

The project uses GitHub Actions for continuous integration:
- Build workflow runs tests and code quality checks
- Publish workflow publishes to PyPI on release

### Version Management

This project follows [Semantic Versioning](https://semver.org/) (SemVer) principles. Version numbers are managed in the `pyproject.toml` file.

To update the version:

1. **For minor releases** (backwards compatible changes):
   ```bash
   # Using bump2version
   bump2version patch  # for bug fixes
   bump2version minor  # improvements of current tools (e.g. complexity)
   ```

2. **For major releases** (breaking changes):
   ```bash
   bump2version major  # for new features (new tools) and breaking changes
   ```

3. **Manual version update**:
   - Edit `pyproject.toml` and update the version field under `[project]`
   - Update `CHANGELOG.md` with the new version and release notes

4. **Verify version**:
   ```bash
   python -c "import importlib.metadata; print(importlib.metadata.version('tagny-mcp-server'))"
   ```

5. **Commit and tag the release**:
   ```bash
   git add pyproject.toml CHANGELOG.md
   git commit -m "Bump version to X.X.X"
   git tag -a vX.X.X -m "Release version X.X.X"
   ```

6. The publish workflow will automatically publish to PyPI

### License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Pull Request Template

See the [PR template](.github/pull_request_template.md)
