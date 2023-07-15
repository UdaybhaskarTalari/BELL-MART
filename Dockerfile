# Use a lightweight web server as the base image
FROM nginx:alpine

# Copy the website files to the container
COPY . /usr/share/nginx/html
