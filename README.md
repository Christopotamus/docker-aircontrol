# Docker CRMPoint
Ubiquiti CRMPoint in a Docker container. More information on the [community forum](http://community.ubnt.com/t5/airControl/bd-p/airControl)

## From Docker Hub (easiest)

To use CRMPoint from Docker Hub, you juste have to run :

~~~bash
docker run -d --name crmpoint -p 443:443 --restart=always christopotamus/crmpoint
~~~

## From source

You only have to clone the repo and to execute `make`

~~~bash
git clone https://github.com/Christopotamus/docker-crmpoint.git
cd docker-crmpoint
docker-compose up
~~~

## First use

After the container is launched, you can connect to [the application](http://localhost:9080) available on your Docker host on the 9080 port.
The default user is `ubnt` and the default password is `ubnt`.
