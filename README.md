```markdown
# Docker Angular Demo

This guide demonstrates how to containerize an Angular application using Docker and serve it through Nginx.

---

## Steps to Dockerize an Angular Application

### 1. Create a New Angular Project
First, create a new Angular project using Angular CLI.

```bash
ng new angular-docker-app
cd angular-docker-app
```

---

### 2. Build the Angular App
Before moving on to Docker, ensure that the app is built correctly.

```bash
ng build --prod
```

This command generates the production-ready build in the `dist/` folder.

---

### 3. Create a Dockerfile
In the root of your Angular project, create a `Dockerfile` to define the Docker image. This file contains the instructions to build the Docker image.

Here is a simple example of a `Dockerfile` to serve your Angular app using Nginx:

```Dockerfile
# Use Nginx base image
FROM nginx:alpine

# Copy the Angular build output to Nginx's HTML directory
COPY dist/angular-docker-app /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
```

---

### 4. Create a `.dockerignore` File
Exclude unnecessary files from the Docker image by creating a `.dockerignore` file in your project's root directory. Add the following lines:

```plaintext
node_modules
dist
```

---

### 5. Build the Docker Image
Build the Docker image using the `docker build` command.

```bash
docker build -t angular-docker-app .
```

---

### 6. Run the Docker Container
Once the image is built, run the container with the following command:

```bash
docker run -p 8080:80 angular-docker-app
```

This will make the Angular app accessible at `http://localhost:8080`.

---

### 7. Verify the Application
Open your browser and navigate to:

```plaintext
http://localhost:8080
```

You should see your production-ready Angular application served through Nginx inside a Docker container.

---

## Summary
This guide helps you:
1. Build and containerize an Angular application.
2. Serve the application through Nginx inside a Docker container.

Feel free to modify this guide to suit your project's specific requirements. Happy coding!
```

This version is structured, easy to read, and formatted properly for GitHub README. Let me know if you need further edits!
