#!/bin/bash

set -e

echo "Deployment started"

sudo mkdir /app

sudo curl -sS https://getcomposer.org/installer | php

sudo mv composer.phar /usr/local/bin/composer

sudo cd /app && composer install

sudo php artisan serve --host=0.0.0.0 --port=80

echo "Deployment finished"