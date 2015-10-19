FROM phusion/baseimage:latest
MAINTAINER Marek Chowaniok 

# Set correct environment variables.
ENV HOME /root

# Regenerate SSH host keys. baseimage-docker does not contain any, so you
# have to do that yourself. You may also comment out this instruction; the
# init system will auto-generate one during boot.
RUN /etc/my_init.d/00_regen_ssh_host_keys.sh

# update the package sources
RUN apt-get update
# we use the enviroment variable to stop debconf from asking questions..
RUN DEBIAN_FRONTEND='noninteractive' apt-get install -y mysql-server-5.6 php5 php5-cli php5-mysql nginx php5-fpm

# package install is finished, clean up
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# install custom config files
ADD nginx.conf /etc/nginx/nginx.conf
ADD php-fpm.conf /etc/php5/fpm/php-fpm.conf

# install service files for runit
# TODO: write scripts.
ADD mysqld.service /etc/service/mysqld/run
ADD php-fpm.service /etc/service/php-fpm/run
ADD nginx.service /etc/service/nginx/run

# add mysql scripts
ADD init_tables.sql /root/init_tables.sql
ADD init_data.sql /root/init_data.sql
ADD init_db.sh /etc/my_init.d/01_init_db.sh
RUN chmod 755 /etc/my_init.d/01_init_db.sh

# add socket directory for php-fpm
RUN mkdir -p /run/fpm

# clean up tmp files (we don't need them for the image)
RUN rm -rf /tmp/* /var/tmp/*

# expose nginx
EXPOSE 80

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]
