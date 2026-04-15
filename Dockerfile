FROM python:3.12-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
        default-jre-headless \
        curl \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir "opendataloader-pdf[hybrid]==2.2.1"

EXPOSE 5002

HEALTHCHECK --interval=30s --timeout=5s --start-period=60s --retries=3 \
    CMD curl -fsS http://localhost:5002/health || exit 1

CMD ["opendataloader-pdf-hybrid", "--host", "0.0.0.0", "--port", "5002", "--max-file-size", "50"]
