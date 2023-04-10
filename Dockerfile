FROM alpine

RUN mkdir -p /etc/nginx/templates
RUN unlink /etc/nginx/sites-available/default.conf
COPY reverse-proxy.conf /etc/nginx/sites-available/
RUN ln -s /etc/nginx/sites-available/reverse-proxy.conf /etc/nginx/sites-enabled/reverse-proxy.conf
RUN sudo systemctl restart nginx
RUN sudo systemctl status nginx


# git clone git@github.com:barcins/docker-nginx.git