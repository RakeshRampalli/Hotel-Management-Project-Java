# Use an official Maven image with OpenJDK
   FROM maven:3.8.4-openjdk-17

   # Set the working directory inside the container
   WORKDIR /app

   # Install git to clone the repository
   RUN apt-get update && apt-get install -y git

   # Clone the GitHub repository (replace the URL with your own repo)
   RUN git clone https://github.com/RakeshRampalli/Hotel-Management-Project-Java.git

   # Navigate to the cloned repository directory
   WORKDIR /app/your-java-repo

   # Run Maven clean and package to build the Java project
   RUN mvn clean package

   # Specify the command to run the built JAR file (adjust if needed)
   CMD ["java", "-jar", "target/your-app.jar"]  # Adjust to your built JAR file
