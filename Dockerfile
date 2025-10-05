# Use a lightweight Nginx image as base
FROM nginx:alpine

# Copy all the website files to the Nginx web root directory
COPY . /usr/share/nginx/html/

# Remove the Dockerfile from the copied content as it's not needed in the final image
RUN rm /usr/share/nginx/html/Dockerfile

# Expose port 80 for web traffic
EXPOSE 80

# Nginx starts automatically when the container runs
# CMD is inherited from the nginx:alpine base image
