FROM ubuntu
RUN apt-get update
RUN apt-get -y install php7.4-fpm php7.4-cli php7.4-common php7.4-opcache php7.4-gd php7.4-json php7.4-mysqlnd php7.4-xml php7.4-xmlrpc php7.4-mysql php7.4-curl php7.4-intl php7.4-xsl php7.4-mbstring php7.4-zip php7.4-bcmath php7.4-soap
RUN apt-get -y install nginx

ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]