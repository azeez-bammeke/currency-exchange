FROM openjdk:11
ADD *.jar app.jar
LABEL authors="Azeez Ayobami"
ENTRYPOINT java -jar app.jar