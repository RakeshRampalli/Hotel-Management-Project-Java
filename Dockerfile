  # Use the official Maven image as a base, which includes Maven and JDK 11
   FROM maven:3.8.4-jdk-11
   
   # Set the working directory inside the container to /app
   WORKDIR /app
   
   # Copy the source code from the host machine to the container
   COPY . /app
   
   # Run Maven commands to clean and package the project
   RUN mvn clean package
