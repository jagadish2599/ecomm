# Use an official Nginx image
FROM nginx:alpine

# Copy the HTML files into the Nginx server directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80
