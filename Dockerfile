# Use an Nginx image to serve the HTML content
FROM nginx:alpine

# Copy your HTML files into the default Nginx directory
COPY . /usr/share/nginx/html

# Expose port 80 to be accessible outside the container
EXPOSE 80

# Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]

