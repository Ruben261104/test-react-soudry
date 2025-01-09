# Utilise une image officielle de Node.js comme base
FROM node:16

# Définit le répertoire de travail dans le conteneur
WORKDIR /usr/src/app

# Copie les fichiers de l'application dans le conteneur
COPY package*.json ./

# Installe les dépendances
RUN npm install

# Copie le reste des fichiers de l'application
COPY . .

# Expose le port 5000 pour l'application ReactJS
EXPOSE 5000

# Commande pour démarrer l'application
CMD ["npm", "start"]
