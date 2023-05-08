# AETTUA Docker Workshop

[Presentation](https://docs.google.com/presentation/d/1plmuomrXDjQ415dWqR-Z6jmXDR8t4reb6meDoGMXae8/edit?usp=sharing)

## 🛠️ Tools

- [Docker](#-docker)

### 📦 Docker

- Linux: https://docs.docker.com/engine/install
- macOS: `brew cask install docker`
- Windows: https://docs.docker.com/desktop/install/windows-install

After installing docker, run `docker run hello-world` to verify that it works.

## 🙌 Hands-on

### Phase 1
**Goal:** Run a simple Flask application in a Docker container
1. Clone this repository to your local machine
2. Containerize your Flask application (tip: create a Dockerfile for the application)
3. Build the image and give it a name/tag

# Phase 2
**Goal:** Run a simple Flask application that communicates with a Redis server
1. Check for a Redis image on Docker Hub and learn how to run it (use it)
1. Run the Flask app and a Redis server in containers (tip: use Docker Compose)

# Phase 3
**Goal:** Improve your Dockerfile (and maybe Docker Compose) file using best practices
