FROM ubuntu

LABEL maintainer franckkoukougnon@yahoo.fr

RUN apt update

RUN apt install -y nginx

ADD static-website-example/ /var/www/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
