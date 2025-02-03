Steps for task 1
---------------------------------------------------------
Step 1 : User needs to clone the repository from https://github.com/prabhat-roy/particle41.git

Step 2 : Create a docker image using the below mentioned command
docker build -t simpletimeservice .

Step 3: Check the image created in above steps using below command
docker images

Step 4 : Run the docker container locally using the command
docker run --rm -dt -p 5000:5000 --name simpletimeservice simpletimeservice

Step 5 : Check whether the container is ruunnung or not using the command
docker ps

Step 6: Open any browser and visit http:127.0.0.1:5000 to get the output

Step 7 : Stop the container after verification is complete using the command
docker stop simpletimeservice

Step 8 : Tag the docker image using the command
 docker image tag simpletimeservice prabhatrkumaroy/simpletimeservice:v1

Step 9 : Login to dockerhub a and create a repository. For example the name is simpletimeimage and dockerhub username is prabhatrkumaroy

Step 9 : Push the docker image to dockerhub using the command
docker push prabhatrkumaroy/simpletimeservice:v1

Step 8 : Remove the comtainer to save space using the command
docker rmi -f simpletimeservice
docker rmi -f prabhatrkumaroy/simpletimeservice:v1