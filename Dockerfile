# Step 1: Build the Angular app
FROM node:18 AS build

# Set working directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy the app source
COPY . .

# Build the app for production
RUN npm run build --prod

# Step 2: Serve the app using Nginx
FROM nginx:alpine

# Copy the built app from the build stage to Nginx's default directory
COPY --from=build /app/dist/angular-docker-app /usr/share/nginx/html

# Expose the port
EXPOSE 80

# Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
