FROM node:18-alpine
WORKDIR /app

# TRUCO: Copiamos packs.json pero lo renombramos a package.json dentro de la imagen
COPY packs.json ./package.json

# Instalamos (será instantáneo)
RUN npm install

# Copiamos el resto de archivos (por si acaso)
COPY . .

# Comando que ejecuta el echo del packs.json
CMD ["npm", "start"]