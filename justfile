set shell := ["zsh", "-cu"]

default:
    @just --list

# install the locked environment
sync:
    uv sync

# run every assert-based check in tests/
test:
    for f in tests/test_*.py; do echo "== $f"; uv run python "$f" || exit 1; done

# rerun the toy checks quoted in docs/
toys:
    for f in docs/toy-checks/*.py toys/*.py; do echo "== $f"; uv run python "$f" || exit 1; done
