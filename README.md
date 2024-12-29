# Dockerized SSH Server

This project includes a Docker container with an SSH service that allows you to connect to the container using SSH.


##  First step

### 1.Use Dockerfile
### 2.Build the Docker Imag
```
docker build -t ssh-server
```
### 3.Run Container
```
docker run -d -p 2222:22 --name ssh-container ssh-server
```
### 4.Conect to container
```
ssh sshuser@localhost -p 2222
```
USERNAME : ```sshuser```
PASSWORD : ```sshpassword```
