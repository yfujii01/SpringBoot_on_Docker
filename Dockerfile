# build image
FROM amazoncorretto:17 AS build
COPY ./ /home/app
RUN cd /home/app && chmod +x gradlew && ./gradlew build

# run image
FROM amazoncorretto:17-alpine
COPY --from=build /home/app/build/libs/*.jar /app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
