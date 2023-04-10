FROM nginx

RUN mkdir -p /etc/nginx/templates
RUN rm -rf /etc/nginx/sites-available/default.conf
COPY ./reverse-proxy.conf /etc/nginx/sites-available/
COPY ./reverse-proxy.conf /etc/nginx/sites-enabled/



# git clone git@github.com:barcins/docker-nginx.git