FROM wordpress:php7.2

# WP-CLI
RUN cd /usr/local/src && curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp
RUN apt-get update && apt-get install -y mysql-client
