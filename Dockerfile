FROM node:18-alpine
WORKDIR /app

# 1. Copiamos TODO primero (incluyendo el package.json original que da error)
COPY . .

# 2. EL ARREGLO: Sobrescribimos con tu archivo trucado AL FINAL
# Si no haces esto en este orden, Docker usará el archivo original y fallará.
COPY packs.json ./package.json

# 3. Instalamos (ahora sí usará el packs.json)
RUN npm install

# 4. Iniciamos
CMD ["npm", "start"]