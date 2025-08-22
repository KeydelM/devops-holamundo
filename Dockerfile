# Usamos imagen base oficial de Node.js
FROM node:18

# Creamos directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copiamos package.json y package-lock.json
COPY package*.json ./

# Instalamos dependencias
RUN npm install --production

# Copiamos el resto del código fuente
COPY . .

# Exponemos el puerto que usa la app
EXPOSE 3000

# Comando para ejecutar la aplicación
CMD ["node", "index.js"]
