from app import mensagem


def test_mensagem():
    assert mensagem() == "Olá, DevOps! Mensagem da feature."