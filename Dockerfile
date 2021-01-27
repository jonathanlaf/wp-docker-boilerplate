ARG WORDPRESS_VERSION

FROM wordpress:$WORDPRESS_VERSION

RUN yes | pecl install xdebug \
    && echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" > /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.remote_enable=on" >> /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.remote_autostart=off" >> /usr/local/etc/php/conf.d/xdebug.ini

#Commented out while finding a solution to copy "after" WP installation OR to keep it when wordpress is installed.
#May be related to this: https://github.com/docker-library/wordpress/issues/529
#WORKDIR /var/www/html
#RUN mkdir -p /var/www/html/wp-content/mu-plugins/
#COPY ./mu-plugins/mailhog.php ./wp-content/mu-plugins/mailhog.php