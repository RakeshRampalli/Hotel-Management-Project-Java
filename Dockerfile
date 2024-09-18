 # Use an official Maven image with OpenJDK
   FROM maven:3.8.4-openjdk-17

   # Set the working directory inside the container
   WORKDIR /app

   # Copy the local repository contents into the container
   COPY . /app

   # Run Maven clean and package to build the Java project
   RUN mvn clean package

   # Specify the command to run the built JAR file (adjust if needed)
   CMD ["java", "-jar", "target/your-app.jar"]  # Adjust to your built JAR file
