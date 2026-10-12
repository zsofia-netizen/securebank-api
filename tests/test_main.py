from src.main import get_status

def test_get_status():
    assert get_status() == "SecureBank API"
