# Image Docker avec FastAPI
FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier les dépendances et les installer
COPY requirements.txt /tmp/
RUN pip install --no-cache-dir -r /tmp/requirements.txt

# Copier tout le code de l’application
COPY . /app/

# Exposer le port 5000
EXPOSE 5000

# Démarrer l'API
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "5000"]
