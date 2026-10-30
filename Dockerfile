FROM nginx:alpine
LABEL maintainer="kang"
ENV APP_ENV=production
COPY site/ /usr/share/nginx/html/
EXPOSE 80
