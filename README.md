# Test Dev Golang Sr
This project uses Docker Compose to facilitate the execution of the development environment.

## Prerequisites

Make sure you have Docker and Docker Compose installed on your local machine. You can find installation instructions at the following links:
- Docker: https://docs.docker.com/get-docker/
- Docker Compose: https://docs.docker.com/compose/install/
- Golang version >= 1.17: https://go.dev/dl/
- Echo: https://github.com/labstack/echo
- Echo-swagger: github.com/swaggo/echo-swagger
- Goose: https://github.com/pressly/goose
- Migrate: https://github.com/golang-migrate/migrate
- Sqlx: github.com/jmoiron/sqlx
- PostgreSQL: github.com/lib/pq
- Logrus: github.com/sirupsen/logrus

## Configuration
Before running the project, you need to perform some configurations. Follow the steps below:

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/witalok2/test-dev-golang-sr.git

2. Navigate to the cloned repository:
    ```bash
   cd test-dev-golang-sr
    ```

2. Open the docker-compose.yml file in a text editor and make the following changes:
    In the database service, set the desired username and password in the environment variables POSTGRES_USER and POSTGRES_PASSWORD, and remember to change the connection URL passed to the applications.

  Note: I recommend not changing the values for testing purposes.

##  Running the Project
After performing the configuration, you can run the project with the following command:
  ```bash
    make up
    or
    1- git submodule update --init --recursive --remote
    2- docker-compose up
  ```
Docker Compose will create and start the necessary containers for the development environment.

##  Accessing the Application
After the successful execution of the project, you can access the application in the browser using the following addresses:
  ```
    api: 
      http://localhost:8080
      http://localhost:8080/healthcheck
      http://localhost:8080/v1/docs/index.html

    rabbitMQ:
      http://localhost:15672/
  ```
The project includes a collection for making the required requests.

##  Shutting Down the Project
To stop the execution of the project, use the following command in the terminal:
  ```bash
    docker-compose down
  ```

The API and the worker are in separate repositories. This repository uses git submodules to link them, with the docker-compose configured to run both together.

The applications have a cloud-build.yaml file with a preliminary configuration for deployment using GCP. It uses triggers to monitor the repository, Cloud Build, and secrets to run securely.

git submodule add https://github.com/witalok2/test-dev-golang-api.git ./app
git submodule add https://github.com/witalok2/test-dev-golang-worker.git ./worker

[https://www.youtube.com/watch?v=p5R_FP-uTH8&ab_channel=WitaloMatheus](https://www.youtube.com/watch?v=p5R_FP-uTH8&ab_channel=WitaloMatheus)https://www.youtube.com/watch?v=p5R_FP-uTH8&ab_channel=WitaloMatheus
