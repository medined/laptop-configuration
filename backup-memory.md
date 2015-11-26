# backup-memory

This file holds information that I am not immediately using but should not be lost.

## docker-compose

Some containers that I have used in the past.

```
jenkins:
  image: jenkins
  name: jenkins
  volumes:
    - /data/jenkins:/var/jenkins_home
  links:
    - artifactory
    - mysql
  ports:
    - "28080:8080"
    - "50000:50000"

hbase:
  image: nerdammer/hbase:1.1.0.1
  name: hbase
  ports:
    - "2181:2181"
    - "60010:60010"
    - "60000:60000"
    - "60020:60020"
    - "60030:60030"

mysql:
  image: mysql:latest
  name: mysql
  environment:
    MYSQL_DATABASE: sample
    MYSQL_USER: mysql
    MYSQL_PASSWORD: mysql
    MYSQL_ROOT_PASSWORD: supersecret
  ports:
    - "3306:3306"

dns:
  image: phensley/docker-dns
  hostname: dns
  domainname: affy.com
  volumes:
    - /var/run/docker.sock:/docker.sock
```
