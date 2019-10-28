FROM php:7.2-apache
# FROM httpd:2.4.41-alpine
# COPY public-html /usr/local/apache2/htdocs/
# /usr/local/apache2/conf/httpd.conf
# RUN apk update && apk upgrade

USER root

RUN echo "deb-src http://deb.debian.org/debian buster main" >> /etc/apt/sources.list
RUN echo "deb-src http://security.debian.org/debian-security buster/updates main" >> /etc/apt/sources.list
RUN echo "deb-src http://deb.debian.org/debian buster-updates main" >> /etc/apt/sources.list


RUN apt-get update

RUN apt-get update && apt-get install -y wget git \
                       nano \
                       cgi-mapserver \
                       mapserver-bin \
                       libmapserver-dev \
                       libmapserver2 \
                       python3-pip \
                       -o APT::Install-Suggests=0 \
                       -o APT::Install-Recommends=0

                       apt-get install \
                       --allow-unauthenticated \
                       protobuf-c-compiler \
                       libprotobuf-c-dev \
                       bison \
                       flex \
                       python-lxml \
                       libfribidi-dev \
                       cmake \
                       librsvg2-dev \
                       colordiff \
                       libpq-dev \
                       libxpm-dev \
                       libpng++-dev \
                       libpng-dev \
                       libgdal-dev \
                       libjpeg-dev \
                       libgif-dev \
                       libgeos-dev \
                       libfreetype6-dev \
                       libfcgi-dev \
                       libcurl4-gnutls-dev \
                       libcairo2-dev \
                       libproj-dev \
                       libxml2-dev \
                       python-dev \
                       python3-dev \
                       libexempi-dev \
                       lcov \
                       lftp \
                       postgis \
                       libharfbuzz-dev \
                       gdal-bin \
                       ccache \
                       curl

                       apt-get install --allow-unauthenticated libmono-system-drawing4.0-cil mono-mcs libperl-dev swig sqlite3



RUN a2enmod rewrite