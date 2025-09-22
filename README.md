# Node.js Demo App with CI/CD Pipeline

## Overview
This is a sample Node.js application designed to demonstrate a CI/CD pipeline using GitHub Actions and Docker. 
The pipeline automatically tests, builds, and deploys a Docker image of the application whenever changes are pushed to the `main` branch.

## Features
- Express.js server with a simple endpoint (`GET /`) returning a greeting message.
- Automated tests using Jest and Supertest.
- Dockerized application for container-based deployment.
- CI/CD workflow with GitHub Actions:
  1. Run tests (`test` job)
  2. Build Docker image (`build` job)
  3. Push Docker image to DockerHub (`push` job)


## Prerequisites
- Node.js (v18 recommended)
- npm (Node package manager)
- Docker & Docker Desktop installed
- GitHub account & DockerHub account
- Optional: `act` CLI for local workflow testing

## Setup & Installation
1. Clone the repository
```bash
git clone https://github.com/AAKASHDEEP786/nodejs-demo-app.git
cd nodejs-demo-app
```

2. Install dependencies
```bash
npm install
```

3. Run tests locally
```bash
npm test
```

4. Build Docker image
```bash
docker build -t nodejs-demo-app .
```

5. Run Docker container
```bash
docker run -d -p 3000:3000 nodejs-demo-app
```
---
Access the app at: [http://localhost:3000](http://localhost:3000)


