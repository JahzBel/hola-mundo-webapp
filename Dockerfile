# Imagen base de Node.js
FROM node:18

# Crear carpeta dentro del contenedor
WORKDIR /app

# Copiar package.json y package-lock.json
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto de archivos del proyecto
COPY . .

# Exponer el puerto de la app
EXPOSE 3000

# Comando para ejecutar la app
CMD ["node", "index.js"]

