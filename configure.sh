#!/bin/sh

cat << EOF > /etc/nginx/nginx.conf
server {
    listen {$PORT} ssl;
    server_name {$servername}
    #ssl_certificate     /etc/nginx/conf.d/certs/xxxx.pem;
    #ssl_certificate_key /etc/nginx/conf.d/certs/xxxx.key;
    ssl_session_timeout 5m;
    ssl_protocols TLSv1 TLSv1.1 TLSv1.2;
    ssl_ciphers ALL:!ADH:!EXPORT56:RC4+RSA:+HIGH:+MEDIUM:+LOW:+SSLv2:+EXP;
    ssl_prefer_server_ciphers on;
    location / {
        root  /usr/share/nginx/html/admin;
        index  index.html index.htm;
    }
    location /admin {
	proxy_pass http://127.0.0.1:2222/;
    }
	
    }
}
EOF
