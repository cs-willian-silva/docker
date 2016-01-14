############################################################
# Start Website
# Start a website using apache
############################################################

# Image used as base skeleton
FROM debian:jessie

# File Author / Maintainer
MAINTAINER Willian Silva <willian.silva@concretesolutions.com.br>

# Send a local file to container
#ADD includes/mycommand.sh /some/place/in/container

# Set an environment variable
#ENV LANG en.us_utf-8

# Define a volume mount
#VOLUME /data

# Change the user which will run the next commands
#USER someuser

# Change the container directory
#WORKDIR /home/someuser

# Run a command during build
RUN apt-get update
RUN apt-get install apache2 git discount -y
RUN rm -rf /var/www/html/
ADD getrepo.sh /

# Expose some port
EXPOSE 80

# Pass a parameter to entrypoing command
CMD bash /getrepo.sh && apache2ctl -D FOREGROUND

# Set default container command
#ENTRYPOINT ["/usr/bin/command"]

