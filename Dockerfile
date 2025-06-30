# Comment (this is the only way to comment, other method can cause unexpected result)

# Base image is needed
# - this example use NodeJs pre-configured linux
# - alpine is one of the most compact linux distro
FROM node:14-alpine

# use COPY to copy files from source folder to target image folder
COPY test.js /test.js

# use CMD to command terminal, usually for install commands
# - next line mostly interperted as "> node /test.js"
# - format of next two lines are accepted
CMD [ "node", "/test.js" ]
#CMD node /test.js

# dockerfile need to compile
# - docker build -t imageName path(usually dockerfile-based)
# > docker build -t testImage .

# compiled image may not found in folder directory
# > docker image ls
# > docker images

# to run any docker image
# > docker run imageName

# website to run docker online
# https://labs.play-with-docker.com/