FROM nginx:1.19.2
#RUN groupadd -r artem && useradd -g artem artem
#RUN chown -R artem:artem /etc/nginx && chown -R artem:artem /var && chown -R artem:artem /run
#USER artem
RUN rm /etc/nginx/conf.d/default.conf
COPY html /var/www/tabolich/html
COPY nginx.conf /etc/nginx
COPY tabolich.conf /etc/nginx/conf.d
COPY /nginx/ngx_http_headers_more_filter_module.so /usr/lib/nginx/modules
