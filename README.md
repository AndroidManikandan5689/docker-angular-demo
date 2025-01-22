# docker-angular-demo
1. Create a new Angular project
First, create a new Angular project using Angular CLI.

ng new angular-docker-app
cd angular-docker-app

2. Build the Angular app
Before we move on to Docker, make sure the app is built correctly.

ng build --prod

This command will generate the production-ready build in the dist/ folder.

3. Create a Dockerfile
In the root of your Angular project, create a Dockerfile to define the Docker image. This file contains the instructions to build the Docker image.

Here is a simple Dockerfile to serve your Angular app using nginx:

Refer - Dockerfile

4. Create a .dockerignore file
It's a good practice to exclude unnecessary files from the Docker image. Create a .dockerignore file in your root directory and add:

node_modules
dist

5. Build the Docker image
Now, build the Docker image using the docker build command.

docker build -t angular-docker-app .

6. Run the Docker container
Once the image is built, you can run the container using the following command:

docker run -p 8080:80 angular-docker-app

This will make the Angular app available at http://localhost:8080 in your browser.

7. Verify the application
Open your browser and go to http://localhost:8080 to see the running Angular app inside Docker.

This will give you a production-ready Angular application served through Nginx inside a Docker container.