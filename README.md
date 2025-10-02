# Netdata System Monitoring Dashboard

**Monitor System Resources Using Netdata**  

This repository demonstrates how to monitor system and application performance metrics using **Netdata**, a free and open-source monitoring tool, running in a Docker container.

---

## 🛠 Tools Used

- **Netdata** - Open-source real-time performance monitoring
- **Docker** - Containerization platform

---

## 🚀 Run Locally

Follow these steps to run Netdata on your local machine:

### 1. Clone this repository

```bash
git clone https://github.com/AAKASHDEEP786/netdata-monitoring-task.git
cd netdata-monitoring-task
```

### 2. Create a folder for logs (optional)
```bash
mkdir logs
```

### 3. Run Netdata with Docker

Option 1: Simple Docker run
```bash
docker run -d --name=netdata -p 19999:19999 netdata/netdata
```
Option 2: Using Docker Compose
```bash
docker-compose up -d
```

### 4. Access Netdata Dashboard

Open your browser and go to:
http://localhost:19999

