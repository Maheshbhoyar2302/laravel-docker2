# FROM ubuntu


# RUN apt update && apt upgrade -y

# RUN apt install git -y

# RUN apt install apache2 -y

# RUN apt install zip -y
# RUN apt install unzip -y

# # RUN apt install php -y

# # RUN apt install -y php-{opcache,pdo,bcmath,bz2,calendar,ctype,exif,ffi,fileinfo,ftp,gd,iconv,intl,json,mbstring,mysqli,phar,posix,readline,shmop,sockets,sysvmsg,sysvsem,sysvshm,tokenizer,zip,curl,ldap}

# RUN a2enmod rewrite

# RUN apt install curl -y

# RUN curl -sS https://getcomposer.org/installer | php

# RUN mv composer.phar /usr/local/bin/composer

# RUN   sed -i "s|/var/www/html|/var/www/example-app/public |g" /etc/apache2/sites-available/000-default.conf


# WORKDIR /var/www/

# RUN git clone https://github.com/Maheshbhoyar2302/laravel-docker2.git

# # WORKDIR /var/www/example-app/

# # RUN php artisan serve &


# WORKDIR /var/www/example-app

# RUN chgrp -R www-data /var/www/example-app/

# WORKDIR /var/www/example-app/storage/
# RUN chmod -R 775 /var/www/example-app/storage
# # RUN ["chmod", "777", "/var/www/example-app/storage/"]

# EXPOSE 80

# RUN service apache2 restart

# WORKDIR /var/www/

# ENTRYPOINT [ "php", "artisan", "serve", "&" ]

FROM php

ENV \
  APP_DIR="/app" \
  APP_PORT="80"

# the "app" directory (relative to Dockerfile) containers your Laravel app...
COPY ./ $APP_DIR

RUN apt update && apt upgrade -y


# RUN apt install -y php-{opcache,pdo,bcmath,bz2,calendar,ctype,exif,ffi,fileinfo,ftp,gd,iconv,intl,json,mbstring,mysqli,phar,posix,readline,shmop,sockets,sysvmsg,sysvsem,sysvshm,tokenizer,zip,curl,ldap}

# RUN apk add --update \
#     curl \
#     php \
#     php-opcache \
#     php-openssl \
#     php-pdo \
#     php-json \
#     php-phar \
#     php-dom \
#     && rm -rf /var/cache/apk/*

# RUN curl -sS https://getcomposer.org/installer | php -- \
#   --install-dir=/usr/bin --filename=composer

RUN curl -sS https://getcomposer.org/installer | php

RUN mv composer.phar /usr/local/bin/composer

RUN cd $APP_DIR && composer install

WORKDIR $APP_DIR
CMD php artisan serve --host=0.0.0.0 --port=$APP_PORT