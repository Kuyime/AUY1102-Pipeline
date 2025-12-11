FROM node:18-alpine
WORKDIR /app

# 1. Copiamos TODO el proyecto primero (esto copiará el package.json "malo")
COPY . .

# 2. EL ARREGLO MAESTRO:
# Sobrescribimos el package.json "malo" con tu packs.json "bueno"
COPY packs.json ./package.json

# 3. Ahora sí instalamos (usará el packs.json ligero y correcto)
RUN npm install

# 4. Comando de inicio
CMD ["npm", "start"]