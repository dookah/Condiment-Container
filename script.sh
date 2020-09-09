#Kill all local containers (sorry)
docker stop $(docker ps -a -q)

#Create the docker network
docker network create --subnet=172.20.0.0/24 --gateway=172.20.0.1 appnet

#build and run the load balancer 
cd lb 
docker build -t lb .
docker run --net appnet --ip 172.20.0.10 -it -d -p 8080:8080 lb

#build and run the mayonaise page
cd ../mayonaise
docker build -t mayonaise .
docker run --net appnet --ip 172.20.0.100 -itd mayonaise

#buld and run the ketchup page
cd ../ketchup
docker build -t ketchup .
docker run --net appnet --ip 172.20.0.101 -itd ketchup