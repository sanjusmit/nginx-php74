FROM ubuntu:20.04
RUN apt-get update
RUN apt-get -y install php7.4-fpm php7.4-cli php7.4-common php7.4-opcache php7.4-gd php7.4-json php7.4-mysqlnd php7.4-xml php7.4-xmlrpc php7.4-mysql php7.4-curl php7.4-intl php7.4-xsl php7.4-mbstring php7.4-zip php7.4-bcmath php7.4-soap
RUN apt-get -y install nginx
RUN apt-get -y install curl
RUN cd ~
RUN curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php
RUN HASH=`curl -sS https://composer.github.io/installer.sig`
RUN echo $HASH
RUN php -r "if (hash_file('SHA384', '/tmp/composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
RUN php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer
RUN composer
ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]
