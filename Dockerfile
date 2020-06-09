FROM nginx:1.19.0-alpine

COPY nginx.conf /etc/nginx/
RUN mkdir /etc/nginx/templates
COPY default.conf.template /etc/nginx/templates/

CMD ["nginx", "-g", "daemon off;"]
