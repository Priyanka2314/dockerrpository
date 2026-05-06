FROM ubuntu:18.04

RUN apt-get update -y && \
    apt-get install -y vim nginx && \
    apt-get clean

WORKDIR /var/www/html

RUN echo "<h1> hello, from intellipat </h1>" > index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
