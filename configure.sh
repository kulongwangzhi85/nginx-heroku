#!/bin/sh

sed -n '/listen/ s/80/\$PORT/p' /etc/nginx/conf.d/default.conf

cat << EOF >> /etc/nginx/conf.d/default.conf
server {
    listen $PORT ;
    server_name "$SERVERNAME" ;
    #ssl_certificate     /etc/nginx/conf.d/certs/xxxx.pem;
    #ssl_certificate_key /etc/nginx/conf.d/certs/xxxx.key;
    #ssl_session_timeout 5m;
    #ssl_protocols TLSv1 TLSv1.1 TLSv1.2;
    #ssl_ciphers ALL:!ADH:!EXPORT56:RC4+RSA:+HIGH:+MEDIUM:+LOW:+SSLv2:+EXP;
    #ssl_prefer_server_ciphers on;
    location / {
        root  /nginx/html/;
        index  index.html;
    }
    location /admin {
	proxy_pass http://127.0.0.1:2222/;
    }
}
EOF
cat /etc/nginx/nginx.conf
cat /etc/nginx/conf.d/default.conf
exec nginx -c /etc/nginx/nginx.conf
