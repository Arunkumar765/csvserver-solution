Install docker and docker-compose.
Check docker and docker-compose version,
```sh
docker version
docker-compose version
```
Pull the below docker images,
```sh
docker pull infracloudio/csvserver:latest
docker pull prom/prometheus:v2.22.0
```

List docker images using below command,
```sh
docker images
```

Run the docker container,
```sh
docker run -itd infracloudio/csvserver
```

Check whether the docker container is running or not,
```sh
docker ps
```

If the docker container is not running, check the status using below command,
```sh
docker ps -a
```

Check the logs and see what is the error,
```sh
docker logs "container ID"
```

Below is the shell script to create the inputFile,
```sh
#!/bin/bash
count=1
while [ $count -lt 11 ]
do
random=$((RANDOM%1000000))
echo "$count, $random" >> inputFile
count=$(($count+1))
done
```

Run the cotainer by mouting the inputfile path,
```sh
docker run -itd -v /root/csvserver/solution/inputFile:/csvserver/inputdata "IMAGENAME"
```

Login to the container using below command,
```sh
docker exec -it <container ID> bash
```
  
Check the port is running on the container,
```sh
netstat -tulpn
```
  
Stop the running container,
```sh
docker stop <container ID>
```
  
Run the container by mapping the port and setting environment variable,
```sh
docker run -itd -v /root/csvserver/solution/inputFile:/csvserver/inputdata -p 9393:9300 "IMAGENAME"
```
