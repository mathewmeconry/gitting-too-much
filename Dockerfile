FROM nginx
COPY ./configs/easier.conf /etc/nginx/nginx.conf
COPY --chown=nginx:nginx ./website /usr/share/nginx/html

# Make it harder for attackers
# RUN rm /usr/share/nginx/html/gitFolder/config
# RUN rm /usr/share/nginx/html/gitFolder/HEAD
# COPY ./configs/harder.conf /etc/nginx/nginx.conf