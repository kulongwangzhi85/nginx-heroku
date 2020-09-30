# V2Ray Heroku

## 概述

该仓库fork至https://github.com/bclswl0827/v2ray-heroku，感谢大神的分享
用于在 Heroku 上部署 V2Ray Websocket。

**Heroku 为我们提供了免费的容器服务，我们不应该滥用它，所以本项目不宜做为长期翻墙使用。**

**可以部署两个以上的应用，实现 [负载均衡](https://toutyrater.github.io/app/balance.html)，避免长时间大流量连接某一应用而被 Heroku 判定为滥用。**

**Heroku 的网络并不稳定，部署前请三思。仅用于测试学习使用**


[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://dashboard.heroku.com/new?template=https%3A%2F%2Fgithub.com%2Fkulongwangzhi85%2Fnginx-heroku)

## ENV 设定

### Server Name

`Server Name` > `指定一个服务名，可以使用heroku提供的通配符证书服务名

**出于安全考量，除非使用 CDN，否则请不要使用自定义域名，而使用 Heroku 分配的二级域名，以实现 HTTPS+ TLS。**
