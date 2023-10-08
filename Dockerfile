FROM openjdk:11.0.2
COPY . /usr/src/jpetstore
WORKDIR /usr/src/jpetstore
RUN ./mvnw clean package
ENTRYPOINT [ "./mvnw", "cargo:run", "-P", "tomcat90" ]