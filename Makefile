.PHONY: dev prod shell-dev check test

dev:
	docker compose up backend

build:
	docker compose build backend

prod:
	docker compose -f docker-compose.yml up backend

shell:
	docker compose run --rm backend /bin/bash

check:
	uv run -- ruff format src/ && \
	uv run -- ruff check src/ --fix && \
	bash scripts/run_mypy

test:
	bash scripts/init_test.sh
