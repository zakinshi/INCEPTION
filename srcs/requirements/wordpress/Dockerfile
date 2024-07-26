FROM debian:bullseye

WORKDIR /var/www/html
RUN rm -rf *

RUN apt update -y && apt upgrade -y && \
    apt install php php-fpm php-mysql curl -y

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp

RUN mkdir -p /run/php

RUN sed -i "s|listen = /run/php/php7.4-fpm.sock|listen = 9000|" /etc/php/7.4/fpm/pool.d/www.conf

COPY ./tools/s_wordpress.sh .

RUN chmod +x s_wordpress.sh

CMD [ "./s_wordpress.sh" ]
