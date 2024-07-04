# python-rye-template

Template for Python projects using Rye.

## Tools

- [Rye](https://rye-up.com/)
- [EditorConfig](https://editorconfig.org/)

## Dependencies

- [pyright](https://github.com/microsoft/pyright)
- [pytest](https://github.com/pytest-dev/pytest)
- [pytest-asyncio](https://github.com/pytest-dev/pytest-asyncio)
- [pytest-cov](https://github.com/pytest-dev/pytest-cov)
- [ruff](https://github.com/astral-sh/ruff)

## Commands

- `rye sync`: Install dependencies.
- lint, format, test
  - `rye run lint`: Lint the code by ruff, pyright, bandit.
  - `rye run fix`: Fix the linting errors by ruff.
  - `rye run format`: Format the code by ruff.
  - `rye run test`: Test the code by pytest.
  - `rye run test_cov`: Test the code by pytest with coverage report.
