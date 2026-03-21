
from fastapi.testclient import TestClient
from app.main import app


client = TestClient(app)

HOST = 'http://localhost:8000'


def test_main():
    response = client.get('/user/signin')
    data = response.json()
    assert response.status_code == 200
    assert data == 'hello user you are signed in'
