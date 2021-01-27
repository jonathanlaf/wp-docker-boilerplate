ARG WORDPRESS_VERSION

FROM wordpress:$WORDPRESS_VERSION

ARG XDEBUG_MODE
ARG XDEBUG_IDEKEY

# Configuration can be found here: https://xdebug.org/docs/all_settings
RUN yes | pecl install xdebug \
    && echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" > /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.remote_enable=on" >> /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.cli_color=1" >> /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.remote_autostart=off" >> /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.client_host=host.docker.internal" >> /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.mode=$XDEBUG_MODE" >> /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.idekey=$XDEBUG_IDEKEY" >> /usr/local/etc/php/conf.d/xdebug.ini

RUN mkdir -p /usr/src/wordpress/wp-content/mu-plugins/
COPY ./mu-plugins/mailhog.php /usr/src/wordpress/wp-content/mu-plugins/mailhog.php