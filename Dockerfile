FROM python:3.9-slim
WORKDIR /app
COPY . .
RUN pip install flask opentelemetry-sdk opentelemetry-exporter-otlp opentelemetry-instrumentation-flask
EXPOSE 5000
CMD ["python", "app.py"]
