FROM node 

WORKDIR  /myapp
# it create a myapp directory in container there file will be run

COPY . .
# it Copy all the file data  that present in Folder of Docker 

RUN  npm install
# it is run when image is creatd of this docker file

CMD ["npm","start"]
# it is run when container is created of the this image


# for build the image of this file run the docker build . it is create the image 
# dicker build . should be run in docker file's folder
# it provide a image using that image id  we can run the container  docker run _imageid using this command

# docker build -t imagename:tag    for build the image name
# docker run image_name for run container
# docker run -p externalPort: internalPOrt Imagename    binding with externana of contaier
# docker run -d -p externalPort :internalPort image name     for detach the port during  docker stop container name (containser name is find by docker ps -a)
# docker run -d -p --name (custom containername ) externalPort :internalPort image name   
# docker run -d -p --rm -name (custom containername ) externalPort :internalPort image name   also remove the exisiting container after stop

# docker run -d --rm -p -v myolumeapp:/workingdirectory of container/ imagename   it stroee the current data in volume it create a volume in docker volume

# docker run -v pathdirectory of folder : workingdirectoryname of container --rm  imagename
