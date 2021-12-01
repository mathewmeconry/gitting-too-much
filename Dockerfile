FROM nginx
COPY ./configs/nginx.conf /etc/nginx/nginx.conf
COPY --chown=nginx:nginx ./ /usr/share/nginx/html
RUN rm /usr/share/nginx/html/.git/config
