FROM ubuntu:16.04

RUN apt-get -y update
RUN apt-get -y install curl

RUN curl -O https://raw.githubusercontent.com/AlPervakov/Redmine/master/install.sh -O https://raw.githubusercontent.com/AlPervakov/Redmine/master/start.sh
RUN chmod a+x /install.sh
RUN chmod a+x /start.sh

RUN ["/bin/bash", "-c", "./install.sh"]

CMD ["/start.sh"]

EXPOSE 80
