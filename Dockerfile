# 1. Imagen base
FROM node:18-alpine

# 2. Directorio de trabajo
WORKDIR /app

# 3. EL TRUCO: Copiamos 'packs.json' pero lo renombramos a 'package.json'
# Así Docker cree que es el archivo oficial y npm install funciona rápido.
COPY packs.json ./package.json

# 4. Instalamos las dependencias (serán casi nulas gracias al archivo falso)
RUN npm install

# 5. Copiamos el archivo app.js (asegúrate de tener un app.js simple en la raíz)
COPY app.js .

# 6. Comando de inicio
CMD ["npm", "start"]