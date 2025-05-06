# Use the official Nginx base image
FROM nginx:alpine

# Set maintainer label (optional)
LABEL maintainer="you@example.com"

# Remove default nginx index page and add your own
RUN rm -rf /usr/share/nginx/html/*

# Copy custom index.html into the container
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx (already the default CMD, so optional)
CMD ["nginx", "-g", "daemon off;"]

