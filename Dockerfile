FROM node

WORKDIR /app

#The first path tell Docker that all the folder, subfolders and 
#files should be copied into the image
#and the second dot it's the path inside the image where the files should be stored
COPY . /app

RUN npm install

EXPOSE 8180

CMD ["node", "server.js"]