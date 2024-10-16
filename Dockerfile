FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Adicione este comando para listar o conteúdo do diretório e as dependências instaladas
RUN ls -la && pip list

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]