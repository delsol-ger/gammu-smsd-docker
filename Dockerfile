# Use a base image with apt package manager
FROM ubuntu:latest

# Update package lists and install gammu
RUN apt-get update && apt-get install -y gammu &&  apt-get install -y gammu-smsd

# Set the working directory
WORKDIR /app

#CMD ["gammu", "identify"]
ENTRYPOINT ["gammu-smsd"]
