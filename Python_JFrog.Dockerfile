# Utiliser une image de base légère
FROM python:3.9-slim

# Installer wget pour télécharger JFrog CLI
RUN apt-get update && apt-get install -y wget

# Télécharger et installer JFrog CLI
RUN wget -O jfrog https://releases.jfrog.io/artifactory/jfrog-cli/v2/[RELEASE]/jfrog-cli-linux-amd64/jfrog \
    && chmod +x jfrog \
    && mv jfrog /usr/local/bin/

# Installer pipenv pour gérer les dépendances Python
RUN pip install pipenv

# Ajouter les fichiers du projet à l'image Docker
COPY . /app
WORKDIR /app

# Installer les dépendances Python
RUN pipenv install --deploy --system

# Point d'entrée pour l'image Docker
CMD ["python", "app.py"]
