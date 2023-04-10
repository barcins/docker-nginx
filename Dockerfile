FROM alpine

RUN mkdir -p /etc/nginx/templates
RUN rm -rf /etc/nginx/sites-available/default.conf
COPY ./reverse-proxy.conf /etc/nginx/sites-available/
RUN ln -s /etc/nginx/sites-available/reverse-proxy.conf /etc/nginx/sites-enabled/reverse-proxy.conf
RUN systemctl restart nginx
RUN systemctl status nginx


# git clone git@github.com:barcins/docker-nginx.git