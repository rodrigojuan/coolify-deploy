FROM python:3.9

   WORKDIR /app

   RUN pip install fastapi==0.95.1 uvicorn==0.22.0 pydantic==1.10.7

   COPY . .

   RUN chmod +x start.sh

   CMD ["./start.sh"]