# Condiment Container
A sample use of NGINX, load balancing between two flask servers.

## How to deploy
The Nginx server is set up to load balance between two flask containers on a 172.20.0.0/24 subnet, so first we better create that docker network. (Root directory)
```
docker network create --subnet=172.20.0.0/24 --gateway=172.20.0.1 appnet
```
Now that's out the way, we need to run our load balancer, so navigate into the lb folder and run the below command. (Load balancer folder)
```
docker run --net appnet --ip 172.20.0.10 -it -d -p 8080:8080 lb
```

Cool, we have a docker network setup! Now we better run both our condiment flask servers, let's go into mayonaise first and run the below command. (Mayonaise folder)
```
docker run --net appnet --ip 172.20.0.100 -itd mayonaise
```
Now mayonaise is running on .100 of our docker network, we can switch over to ketchup and get that up and running, see below for that command. (Ketchup folder)
```
docker run --net appnet --ip 172.20.0.101 -itd ketchup
```
## Why?
I wanted to learn NGINX to be honest. 
