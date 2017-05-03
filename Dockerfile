FROM php:apache

LABEL maintainer "yinguowei@cn.wilmar-intl.com"

ENV ITDB_VERSION 1.23

# install components include php sqlite and call docker-php-ext-install to install:  "php-posix", "php-mbstring", "php5-gd", "php5-json" "php5-sqlite" "php-pdo"
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng12-dev \
        php5-sqlite \
        unzip \
        wget \
    && docker-php-ext-install -j$(nproc) posix mbstring gd json pdo

# get itdb source package and unzip to apache folder
RUN wget https://codeload.github.com/sivann/itdb/zip/$ITDB_VERSION -O itdb-$ITDB_VERSION.zip \
    && unzip itdb-$ITDB_VERSION.zip -d /var/www/html/ \
    && mv /var/www/html/itdb-$ITDB_VERSION/* /var/www/html \
    && mv /var/www/html/data/pure.db /var/www/html/data/itdb.db \
    && rm -rf /var/www/html/itdb-$ITDB_VERSION \
    && rm itdb-$ITDB_VERSION.zip

# make the data/itdb.db file AND the data/ directory, the data/files/ AND translations/ directory readable and writeable by the web server
RUN chown -R www-data /var/www/html/data \
    && chmod -R u+w /var/www/html/data \
    && chown -R www-data /var/www/html/translations \
    && chmod -R u+w /var/www/html/translations