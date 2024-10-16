#!/bin/bash

echo "Conteúdo do diretório atual:"
ls -la

echo "Instalando dependências:"
pip install -r requirements.txt

echo "Dependências instaladas:"
pip list

echo "Tentando importar FastAPI:"
python -c "import fastapi; print(fastapi.__version__)"

echo "Iniciando a aplicação:"
uvicorn main:app --host 0.0.0.0 --port 80