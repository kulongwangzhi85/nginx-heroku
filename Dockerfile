FROM nginx:latest

ADD configure.sh /configure.sh
RUN chmod +x /configure.sh
RUN /configure.sh

