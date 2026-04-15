# n8n-odl-docker

OpenDataLoader PDF hybrid server packaged for Docker — deployed via Coolify alongside n8n on VPS.

- Image: Python 3.12 slim + default JRE + `opendataloader-pdf[hybrid]==2.2.1`
- Port: 5002 (internal — not exposed publicly)
- Endpoints: `GET /health`, `POST /v1/convert/file`
- Resource limits: 2 GB RAM

## Użycie z n8n

W n8n na tym samym Docker network: `http://odl-hybrid:5002/v1/convert/file`.
