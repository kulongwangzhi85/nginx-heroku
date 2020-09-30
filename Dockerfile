FROM nginx:latest

ADD configure.sh /configure.sh
ADD nginx.conf /etc/nginx/nginx.conf

ADD index.html /nginx/html/index.html
RUN chmod +x /configure.sh
CMD /configure.sh

