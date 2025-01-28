# Fastapi template

A simple FastAPI template.

### Technology stack & features
- FastAPI
  - Pydantic 
- Docker & Docker Compose
- Tests

### System requirements
- Docker
- Make
- [uv](https://docs.astral.sh/uv/)

## Development

### Setup

1. Create `.env` by copying `.env.template`
    ```shell
    cp .env.template .env
    ```

2. Run the project
    ```shell
    make dev
    ```

The app will be launched on port `8000` and it's possible to view the API docs on `http://localhost:8000/docs`

### Useful commands

There's a makefile that has multiple useful commands defined within it

- `make dev` -  runs the backend container
- `make build` -  builds the backend container
- `make prod` -  runs a prod version of the container that's smaller
- `make shell` -  runs and attached to the backend container
- `make check` -  formats and checks the code
- `make test` -  runs tests and shows the total code coverage

Command to connect to any running container:
```shell
docker exec -it <container_id> bash
```

### Commiting code

Pre-commit hooks are set up to check the code on commits - [configuration file](.pre-commit-config.yaml). To install pre-commit hooks run `pre-commit install`. More info [here](https://pre-commit.com/).

To run the checks before committing, run:
```shell
pre-commit run
```

### Adding dependencies

after adding a dependency with uv it's necessary to rebuild the backend docker container to update the containers dependencies
```shell
make build
```

## Production

To build a small docker image for prod run:
```shell
make prod
```
