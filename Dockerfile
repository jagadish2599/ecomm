# Step 1: Use an official Nginx image as a base image
FROM nginx:alpine

# Step 2: Set the maintainer label (optional)
LABEL maintainer="Your Name pothana jagadish"

# Step 3: Copy the static HTML, CSS, and JavaScript files to the Nginx web directory
COPY ./ecomm/ /usr/share/nginx/html

# Step 4: Expose the default Nginx port (80)
EXPOSE 80

# Step 5: Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
