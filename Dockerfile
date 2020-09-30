FROM nginx:latest

ADD configure.sh /configure.sh

ADD index.html /nginx/html/index.html
RUN chmod +x /configure.sh
CMD /configure.sh

