# Usamos una imagen base ligera de Node
FROM node:18-alpine

# Establecemos el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos los archivos de definición de dependencias
COPY package.json ./

# Instalamos las dependencias (si las hubiera)
RUN npm install

# Copiamos el resto del código fuente
COPY . .

# Comando por defecto para iniciar la app
CMD ["npm", "start"]