from fastapi.testclient import TestClient

from src.main.settings import settings


def test_system_health(client: TestClient) -> None:
    response = client.get(f"{settings.API_V1_STR}/health")
    assert response.status_code == 200
    content = response.json()
    assert content["is_healthy"]
