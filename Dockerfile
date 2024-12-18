# Use the official Nginx image as the base
FROM nginx:latest

# Copy custom HTML files to the Nginx default directory
COPY ./nginx/ /usr/share/nginx/html/

# Expose port 80 for web traffic
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
