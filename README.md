# laptop-configuration
This repository details how I configure my laptop after a new install of Ubuntu.

## docker-compose

docker-compose starts the containers that I need running all of the time. The start command is 'docker-compose up -d'

```
# docker-compose.yml
#
artifactory:
  image: codingtony/artifactory
  volumes:
    - "/data/artifactory/data:/opt/artifactory/data"
    - "/data/logs/artifactory:/opt/artifactory/logs"
  ports:
    - "8081:8081"
  hostname: artifactory
```

On occasion I add containers that I need:

```
#jenkins:
#  image: jenkins
#  name: jenkins
#  volumes:
#    - /data/jenkins:/var/jenkins_home
#  links:
#    - artifactory
#    - mysql
#  ports:
#    - "28080:8080"
#    - "50000:50000"

#hbase:
#  image: nerdammer/hbase:1.1.0.1
#  name: hbase
#  ports:
#    - "2181:2181"
#    - "60010:60010"
#    - "60000:60000"
#    - "60020:60020"
#    - "60030:60030"

#mysql:
#  image: mysql:latest
#  name: mysql
#  environment:
#    MYSQL_DATABASE: sample
#    MYSQL_USER: mysql
#    MYSQL_PASSWORD: mysql
#    MYSQL_ROOT_PASSWORD: supersecret
#  ports:
#    - "3306:3306"

#dns:
#  image: phensley/docker-dns
#  hostname: dns
#  domainname: affy.com
#  volumes:
#    - /var/run/docker.sock:/docker.sock
```
