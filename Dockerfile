FROM openjdk:8-jdk-alpine
# Environment Variable that defines the endpoint of sentiment-analysis python api.
ENV SA_LOGIC_API_URL http://localhost:5000
ENV SERVER_PORT=9090
ADD build/libs/sa-webapp-gradle-0.0.1-SNAPSHOT.jar /
EXPOSE 9090
CMD ["java", "-jar", "sa-webapp-gradle-0.0.1-SNAPSHOT.jar", "--sa.logic.api.url=${SA_LOGIC_API_URL}"]