#!/bin/bash

echo "===== Ambiente Python ====="
which python
python --version

echo "===== Conteúdo do diretório atual ====="
ls -la

echo "===== Conteúdo do requirements.txt ====="
cat requirements.txt

echo "===== Instalando dependências ====="
pip install -r requirements.txt -v

echo "===== Dependências instaladas ====="
pip list

echo "===== Verificando instalação do FastAPI ====="
pip show fastapi

echo "===== Tentando importar FastAPI ====="
python -c "import fastapi; print(fastapi.__version__)"

echo "===== Iniciando a aplicação ====="
uvicorn main:app --host 0.0.0.0 --port 80