FROM debian:buster

RUN apt-get update \
	&& apt-get install -y nginx openssl \
	&& rm -rf /var/lib/apt/lists/*
	
EXPOSE 443

RUN     openssl req -x509 -nodes -days 365 -newkey rsa:4096 -keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt -subj "/C=FR/ST/Paris/L=Paris/O=AlexandreAndCo/CN=achane-l.42.fr"

COPY	./conf/nginx.conf /etc/nginx/conf.d

ENTRYPOINT ["nginx", "-g", "daemon off;"]