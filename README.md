[![Docker Pulls](https://img.shields.io/docker/pulls/talendinc/nginx-bad-request.svg)](https://hub.docker.com/r/talendinc/nginx-bad-request/)
[![Docker Stars](https://img.shields.io/docker/stars/talendinc/nginx-bad-request.svg)](https://hub.docker.com/r/talendinc/nginx-bad-request/)
[![GitHub tag](https://img.shields.io/github/tag/talendinc/nginx-bad-request.svg?maxAge=2592000)](https://img.shields.io/github/tag/talendinc/nginx-bad-request)
[![](https://badge.imagelayers.io/talendiinc/nginx-bad-request:latest.svg)](https://imagelayers.io/?images=talendinc/nginx-bad-request:latest)

# nginx-bad-request #

This container is made to be used behind an Application LoadBalancer to protect some subpaths or some paths which should not be given in a front.

every path but /healthcheck will return a 400 error with the simple text message "bad request"

## healthcheck ##

The healthcheck for the container can be joined by /healthcheck (which return a 204)

## Building ##

``` shell
git clone https://github.com/talend/docker-nginx-bad-request.git
cd docker-nginx-bad-request
docker build -t talendinc/nginx-bad-request .
```

## Examples of use ##

``` shell
docker run -d -p 8080:80 --rm --name nginx-bad-request talendinc/nginx-bad-request

curl http://localhost:8080/my/protected/path -w '\n%{http_code}'
bad request
400

curl http://localhost:8080/healthcheck -w '\n%{http_code}'

204
```

# License #
[Apache Version 2.0](https://github.com/talend/docker-nginx-bad-request/LICENSE)
