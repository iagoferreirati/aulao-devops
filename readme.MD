# Aula de Docker: Conceitos e Comandos

Este é um guia introdutório sobre Docker, abordando conceitos fundamentais e comandos básicos para começar a trabalhar com contêineres e imagens Docker.

## Introdução

Docker é uma plataforma de código aberto que permite a criação, execução e gerenciamento de aplicativos em ambientes isolados chamados de contêineres. Este guia fornecerá uma visão geral dos principais conceitos e comandos do Docker.

## Conceitos Fundamentais

### Contêineres

Contêineres são unidades isoladas que empacotam um aplicativo e suas dependências, garantindo consistência em diferentes ambientes.

### Imagens

Imagens são snapshots estáticos das configurações e sistema de arquivos de um contêiner. Elas são a base para criar e executar contêineres.

### Dockerfile

Um Dockerfile é um arquivo de texto que contém um conjunto de instruções para construir uma imagem Docker. Ele descreve a configuração e etapas para montar o contêiner.

### Docker Hub

O Docker Hub é um registro público de imagens Docker, permitindo compartilhar e acessar imagens prontas para uso.

### Docker Compose

Docker Compose é uma ferramenta para definir e executar aplicativos compostos por vários contêineres.

## Comandos Básicos

- `docker pull <imagem>`: Baixa uma imagem do Docker Hub.
- `docker run <imagem>`: Cria e inicia um novo contêiner com base em uma imagem.
- `docker ps`: Lista os contêineres em execução.
- `docker images`: Lista as imagens baixadas localmente.
- `docker build -t <nome_da_imagem> <caminho_do_Dockerfile>`: Constrói uma nova imagem a partir de um Dockerfile.
- `docker stop <nome_do_contêiner>`: Para um contêiner em execução.
- `docker start <nome_do_contêiner>`: Inicia um contêiner previamente criado.
- `docker exec -it <nome_do_contêiner> <comando>`: Executa um comando dentro de um contêiner em execução.
- `docker-compose up`: Inicia aplicativos compostos definidos no arquivo `docker-compose.yml`.

## Exemplo de Uso

Vamos criar um exemplo simples de uma aplicação web usando o Docker.

1. **Crie um Dockerfile com as instruções necessárias:**

Crie um arquivo chamado `Dockerfile` com o seguinte conteúdo:

```Dockerfile
FROM nginx:latest
COPY index.html /usr/share/nginx/html/index.html
```

2. Crie um arquivo index.html para a aplicação web:
```html
<!DOCTYPE html>
<html>
<head>
    <title>Aulão Migração DevOps</title>
</head>
<body>
    <h1>Aulão Migração DevOps</h1>
</body>
</html>
```

3. Construa a imagem usando docker build:

```bash
docker build -t minha-aplicacao-web .
```

4. Crie o arquivo docker-compose.yml para usar o Docker Compose:
```yaml
services:
web:
    build:
    context: .
    dockerfile: Dockerfile
    image: minha-aplicacao-web
    ports:
    - "80:80"
```

5. Inicie o contêiner usando docker-compose:
```bash
docker-compose up -d
```