# Demo Docker for Spring Boot

## Run without docker

```sh
./gradlew build && java -jar build/libs/demo_docker-0.0.1-SNAPSHOT.jar
```

### Access

GET http://localhost:8080

↓

Hello Docker World

## Run with docker

```sh
docker build -t example . && docker run -p 8080:8080 example
```

### Access

GET http://localhost:8080

↓

Hello Docker World
