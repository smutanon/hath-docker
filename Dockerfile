FROM openjdk:11
# Set the working directory
WORKDIR /hentaiathome
# Install wget
RUN apt-get install -y wget
# Download HentaiAtHome zip file
RUN wget https://repo.e-hentai.org/hath/HentaiAtHome_1.6.1.zip
# Extract the zip file
RUN unzip HentaiAtHome_1.6.1.zip
# Set the command to run your Java application
CMD ["java", "-jar", "HentaiAtHome.jar"]
# Continue building your Docker image...
