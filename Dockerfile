FROM dcycle/drupal:8

# Make sure opcache is disabled during development so that our changes
# to PHP are reflected immediately.
RUN echo 'opcache.enable=0' >> /usr/local/etc/php/php.ini

# Download contrib modules
RUN drush dl devel -y

RUN cp -r /var/www/html/core /var/www/html-tmp-core

ADD docker-resources/drupal /docker-resources

RUN cp /var/www/html/sites/default/default.settings.php /var/www/html/sites/default/settings.php
RUN echo "include '/docker-resources/settings/local-settings.php';" >> /var/www/html/sites/default/settings.php

# Install dev dependencies such as PHPUnit.
RUN apt-get -y install git
RUN composer update --dev

EXPOSE 80
