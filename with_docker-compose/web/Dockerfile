FROM ubuntu:16.04

RUN apt-get update && apt-get install -y nginx curl

RUN curl -O https://raw.githubusercontent.com/AlPervakov/mytestRedmine/master/ver2/web/proxy -O https://raw.githubusercontent.com/AlPervakov/mytestRedmine/master/ver2/web/start.sh

RUN rm /etc/nginx/sites-enabled/default
RUN cp proxy /etc/nginx/sites-available/proxy
RUN ln -s /etc/nginx/sites-available/proxy /etc/nginx/sites-enabled/proxy

RUN chmod a+x /start.sh

CMD ["/start.sh"]

EXPOSE 8080
