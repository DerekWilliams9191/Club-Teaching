# Docker Basics

Welcome! This guide will teach you the basics of Docker and Docker Compose. Don't worry if you're not comfortable with the command line yet - we'll keep things simple!

## What is Docker?

Think of Docker as a way to package your application and everything it needs to run into a "container." It's like shipping your app in a box that contains everything needed - your code, libraries, and system tools.

## What is Docker Compose?

Docker Compose is a tool that helps you run multiple containers together. Instead of typing long commands, you write a simple file that describes what you want to run.

## Getting Started

### Step 1: Make sure Docker is installed

You'll need Docker Desktop installed on your computer. You can download it from [docker.com](https://docker.com).

### Step 2: Understanding the files

In this folder, you'll find:
- `app.py` - A simple web application
- `Dockerfile` - Instructions for Docker to build our app
- `docker-compose.yml` - Configuration to run everything easily

## Running the Example App

The easiest way is to use Docker Compose:

```bash
docker-compose up
```

This command will:
1. Build your app into a container
2. Start it running
3. Make it available at http://localhost:3000

### What you'll see

- Open your web browser
- Go to http://localhost:3000
- You should see "Hello World!" displayed

### Stopping the app

Press `Ctrl+C` in your terminal, or run:

```bash
docker-compose down
```

## Understanding the Files

### The Web App (app.py)
This is a simple Python web server that responds with "Hello World!" when you visit it.

### The Dockerfile
This file tells Docker how to package your app. It:
1. Uses Python as the base
2. Copies your code
3. Installs any needed packages
4. Starts your app

### The docker-compose.yml
This file makes everything easy to run. Instead of remembering complex Docker commands, you just run `docker-compose up`!

## Next Steps

Once you're comfortable with this:
- Try changing the "Hello World!" message in app.py
- Run `docker-compose up --build` to rebuild with your changes
- Experiment with adding more services to docker-compose.yml

Happy Dockering! 🐳