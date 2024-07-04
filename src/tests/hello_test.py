"""Test for hello function."""

from src.python_rye_template import hello


def test_hello():
    """Test hello function."""
    assert hello() == "Hello from python-rye-template!"
