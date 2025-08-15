# Pull Request Template

## Description

Please include a summary of the changes and the related issue. Please also include relevant motivation and context.

## Related Issue

<!-- If this PR is related to an issue, please link it here -->
Fixes # (issue)


## Type of change

<!-- Put an `x` in all the boxes that apply -->

- [ ] Bug fix (non-breaking change which fixes an issue)
- [ ] New feature (non-breaking change which adds functionality)
- [ ] Breaking change (fix or feature that would cause existing functionality to not work as expected)
- [ ] This change requires a documentation update

## TODO checklist

### Project Setup and Configuration
- [ ] Updated `CHANGELOG.md` with description of changes for the new version
- [ ] Verified that all dependencies in `pyproject.toml` are up-to-date and correctly specified
- [ ] Confirmed that `pre-commit` hooks are properly installed and working

### Code Quality and Testing
- [ ] All code follows project's style guidelines (black, flake8, isort, ruff)
- [ ] Added or updated tests in `tests/` directory
- [ ] All tests pass successfully (`pytest`)
- [ ] Verified that new functionality works as expected

### Documentation and Readme Updates
- [ ] Updated `README.md` with any new features or changes
- [ ] Updated `CONTRIBUTING.md` if there are changes to contribution guidelines
- [ ] Verifed theGithub Actions workflow `.github/workflows/build.yml` is locally working with `act`
- [ ] Ensured all code examples in documentation are working
- [ ] Verified that installation instructions work correctly

### Feature Implementation
- [ ] Implemented all features described in the issue/feature request
- [ ] All new tools are properly registered and accessible via MCP server
- [ ] Tools are properly tested with appropriate test cases
- [ ] Code follows existing project style and conventions

### Code Quality and Compliance
- [ ] Confirmed that `pre-commit` hooks are properly installed and passed successfully
- [ ] No secrets detected in the codebase
- [ ] Version number updated in `CHANGELOG.md`

### Release Preparation
- [ ] Version bumped appropriately in `src/tagny_mcp_server/__version__.py` following SemVer principles
- [ ] Build workflow passes

### Final Checks
- [ ] All TODO items in the template have been addressed or explained
- [ ] The PR description clearly explains the purpose and scope of changes
