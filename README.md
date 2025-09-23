# TodoApp Docker Deployment

This repository contains a simple Todo application that can be run using Docker. The app has a **backend** and **frontend**, and this README explains how to clone, build, and run it.

## Prerequisites

- [Docker](https://www.docker.com/get-started) installed
- Git installed

## Clone the Repository

```bash
git clone https://github.com/AAKASHDEEP786/to-do-app-main.git
cd to-do-app-main
```

## Build and Run with Docker
  Build the Docker image:

```bash
docker build -t todoapp:latest -f backend/Dockerfile .
```
---

## Run the container:
```bash
docker run -d --name todoapp -p 4000:4000 todoapp:latest
```
---

Open your browser and go to:

http://localhost:4000

## Stop the Application
```bash
docker rm -f todoapp
```
License
This project is open-source and free to use.
