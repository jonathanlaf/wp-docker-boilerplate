ARG WORDPRESS_VERSION

FROM wordpress:$WORDPRESS_VERSION

RUN yes | pecl install xdebug \
    && echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" > /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.remote_enable=on" >> /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.remote_autostart=off" >> /usr/local/etc/php/conf.d/xdebug.ini

RUN mkdir -p /usr/src/wordpress/wp-content/mu-plugins/
COPY ./mu-plugins/mailhog.php /usr/src/wordpress/wp-content/mu-plugins/mailhog.php