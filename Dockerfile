FROM alpine

RUN sudo mkdir -p /etc/nginx/templates
RUN sudo rm -rf /etc/nginx/sites-available/default.conf
COPY sudo reverse-proxy.conf /etc/nginx/sites-available/
RUN sudo ln -s /etc/nginx/sites-available/reverse-proxy.conf /etc/nginx/sites-enabled/reverse-proxy.conf
RUN sudo systemctl restart nginx
RUN sudo systemctl status nginx


# git clone git@github.com:barcins/docker-nginx.git