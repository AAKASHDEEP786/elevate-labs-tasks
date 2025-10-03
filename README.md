# Hello Java Maven Project with Jenkins

This is a simple **Java HelloWorld application** built with **Maven** and integrated with **Jenkins** as part of a CI/CD learning task (Day 8).

## 🚀 Project Overview
- A basic Java program that prints:  

Hello, Jenkins + Maven!

- Uses **Maven** for build and dependency management.  
- Configured in Jenkins as a **Freestyle Job** with Maven build goals (`clean package`).  
- Demonstrates the first step into CI/CD pipelines with Jenkins.

---


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

