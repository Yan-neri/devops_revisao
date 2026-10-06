# Imagem base
FROM python:3.12-slim

# Diretorio de trabalho
WORKDIR /app

# Copia os arquivos
COPY . .

# Instala dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Porta usada pela aplicacao
EXPOSE 8080

# Comando de inicializacao
CMD ["python", "-m", "http.server", "8080"]