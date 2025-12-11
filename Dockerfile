FROM node:18-alpine
WORKDIR /app

# TRUCO CRÍTICO: Copiamos packs.json pero lo guardamos como 'package.json' dentro del Docker
# Esto engaña al sistema para que use tus scripts simples y no el complejo de TSDX
COPY packs.json ./package.json

# Instalamos dependencias (será muy rápido)
RUN npm install

# Copiamos el resto de archivos (app.js, etc.)
COPY . .

# Ejecutamos el comando de inicio
CMD ["npm", "start"]