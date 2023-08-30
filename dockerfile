# Use a imagem oficial do Node.js como base
FROM node:18

# Diretório de trabalho no contêiner
WORKDIR /usr/src/app

# Copiar os arquivos de package.json e package-lock.json para o diretório de trabalho
COPY package*.json ./

# Instalar as dependências do projeto
RUN npm install

# Copiar todos os arquivos do diretório atual para o diretório de trabalho no contêiner
COPY . .

# Expor a porta que o aplicativo está ouvindo
EXPOSE 3000

# Comando para iniciar o aplicativo
CMD ["node", "app.js"]
