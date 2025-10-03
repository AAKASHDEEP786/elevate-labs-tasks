# Hello Java Maven Project with Jenkins

This is a simple **Java HelloWorld application** built with **Maven** and integrated with **Jenkins** as part of a CI/CD learning task (Day 8).

## 🚀 Project Overview
- A basic Java program that prints:  

Hello, Jenkins + Maven!

- Uses **Maven** for build and dependency management.  
- Configured in Jenkins as a **Freestyle Job** with Maven build goals (`clean package`).  
- Demonstrates the first step into CI/CD pipelines with Jenkins.

---

## 🛠 Tools Used
- **Java JDK 17+** (Jenkins requires Java 17+, but the project targets Java 8 compatibility)
- **Maven 3.8.6**
- **Jenkins LTS** (running on Docker)
- **Git** (optional, for source code versioning)

---

## ⚡ Getting Started

### 1. Clone the Repository
```bash
git clone https://github.com/AAKASHDEEP786/hello-java-maven.git
cd hello-java-maven
```
### 2. Build with Maven (locally)
```bash
mvn clean package
```
Run the jar:
```bash
java -jar target/hello-1.0.jar
```
Expected output:

Hello, Jenkins + Maven!

### ⚙️ Jenkins Setup (Freestyle Job)

Run Jenkins with Docker
```bash
docker run -d --name jenkins \
  -p 8080:8080 -p 50000:50000 \
  -v jenkins_home:/var/jenkins_home \
  jenkins/jenkins:lts-jdk17
```

## Install Maven inside Jenkins

Go to Manage Jenkins → Global Tool Configuration → Maven → Install Automatically

## Create a Freestyle Job

Source Code Management → point to repo (or workspace folder)

Build → Add build step → Invoke top-level Maven targets

Goal: clean package

(Optional) Post-build Actions

Archive the artifact: target/*.jar

✅ Output

In Jenkins Console Output, you should see:

[INFO] BUILD SUCCESS
Finished: SUCCESS

📦 Deliverables

Java HelloWorld app (HelloWorld.java)

pom.xml

Jenkins Freestyle job build logs (screenshot with BUILD SUCCESS)

🙌 Author

This project was created as part of Day 8 CI/CD learning journey.




