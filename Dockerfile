FROM openjdk:11

WORKDIR /app
COPY OlaUnicamp.java .

RUN javac OlaUnicamp.java

CMD ["java", "OlaUnicamp"]
