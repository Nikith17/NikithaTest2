# Use official NGINX base image
FROM nginx:latest

# Remove default NGINX HTML files and replace with our static site
RUN rm -rf /usr/share/nginx/html/*
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start NGINX server
CMD ["nginx", "-g", "daemon off;"]
