FROM debian:bullseye

RUN apt update -y && apt upgrade -y
RUN apt install -y nginx && \
    apt install openssl -y

COPY ./conf/nginx.conf ./etc/nginx/sites-available/default

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key \
    -out /etc/ssl/certs/nginx-selfsigned.crt \
    -subj "/C=MO/L=KH/O=1337/OU=student/CN=sinshi"

CMD [ "nginx", "-g", "daemon off;"]