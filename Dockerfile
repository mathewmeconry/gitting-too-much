FROM nginx
COPY ./configs/easier.conf /etc/nginx/nginx.conf
COPY --chown=nginx:nginx ./ /usr/share/nginx/html

# Make it harder for attackers
# RUN rm /usr/share/nginx/html/.git/config
# RUN rm /usr/share/nginx/html/.git/HEAD
# COPY ./configs/harder.conf /etc/nginx/nginx.conf