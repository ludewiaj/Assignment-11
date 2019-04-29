# Dockerfile
FROM nginx
LABEL maintainer="Andy Ludewig, lude3849@stthomas.edu"
EXPOSE 80
COPY index.html /usr/share/nginx/html
