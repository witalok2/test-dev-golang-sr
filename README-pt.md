# Test Dev Golang Sr
Este projeto utiliza o Docker Compose para facilitar a execução do ambiente de desenvolvimento.

## Pré-requisitos

Certifique-se de ter instalado o Docker e o Docker Compose em sua máquina local. Você pode encontrar instruções de instalação nos seguintes links:

- Docker: https://docs.docker.com/get-docker/
- Docker Compose: https://docs.docker.com/compose/install/
- Golang versão >= 1.17: https://go.dev/dl/
- Echo: https://github.com/labstack/echo
- Echo-swagger: github.com/swaggo/echo-swagger
- Goose: https://github.com/pressly/goose
- Migrate: https://github.com/golang-migrate/migrate
- Sqlx: github.com/jmoiron/sqlx
- PostgreSQL: github.com/lib/pq
- Logrus: github.com/sirupsen/logrus

## Configuração
Antes de executar o projeto, é necessário realizar algumas configurações. Siga as etapas abaixo:

1. Faça o clone do repositório para sua máquina local:

   ```bash
   git clone https://github.com/witalok2/test-dev-golang-sr.git

2. Navegue até o diretório raiz do projeto:
    ```bash
   cd test-dev-golang-sr
    ```

2. Abra o arquivo docker-compose.yml em um editor de texto e faça as seguintes alterações:
    No serviço database, defina o nome de usuário e senha desejados nas variáveis de ambiente 
    POSTGRES_USER e POSTGRES_PASSWORD, lembre-se de alterar a url de conexão que é passado para as aplicações.

  obs: recomendo que em caso de teste não alterar os valores. 

##  Executando o projeto
Após realizar a configuração, você pode executar o projeto com o seguinte comando:
  ```bash
    make up
    ou
    1- git submodule update --init --recursive --remote
    2- docker-compose up
  ```
O Docker Compose irá criar e iniciar os contêineres necessários para o ambiente de desenvolvimento.

##  Acessando a aplicação
Após a execução bem-sucedida do projeto, você pode acessar a aplicação no navegador usando o seguinte endereço:
  ```bash
    api: 
      http://localhost:8080
      http://localhost:8080/healthcheck
      http://localhost:8080/v1/docs/index.html

    rabbitMQ:
      http://localhost:15672/
  ```
no projeto segue a collection para realizar as request necessária.

##  Encerrando o projeto
Para encerrar a execução do projeto, utilize o comando abaixo no terminal:
  ```bash
    docker-compose down
  ```

Api e o worker estão em repositório independentes, este repositorio está usando git submodule para linkar os dois, com o docker-compose configurado para executar os dois juntos.

As aplicações estão com o cloud-build.yaml com uma previa configuração para deploy usando GCP, usando as trigger para observar o repositorio, o cloud build, secrets para que possa rodar normalmente e com segurança.

 ```
   git submodule add https://github.com/witalok2/test-dev-golang-api.git ./app
   git submodule add https://github.com/witalok2/test-dev-golang-worker.git ./worker
 ```
##  Video Demo
[![Demo](https://developers.redhat.com/sites/default/files/styles/article_feature/public/blog/2020/12/2020_Stateful_Golang_Kubernetes_Shared_image_A.png?itok=xaQpJG1L)](https://www.youtube.com/watch?v=p5R_FP-uTH8&ab_channel=WitaloMatheus)
