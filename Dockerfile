FROM nginx:1.25-alpine
MAINTAINER Talend SRE team

#Minimal nginx to absorb incorrect paths from front
RUN rm -f /etc/nginx/conf.d/default.conf
COPY conf/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
