FROM node:current-alpine

# update and install dependency
RUN apk update && apk upgrade
RUN apk add --no-cache git make libc6-compat

# create destination directory
RUN mkdir -p /ruudniew-soundboard
WORKDIR /ruudniew-soundboard

# copy the app, note .dockerignore
COPY . /ruudniew-soundboard/

# set app serving to permissive / assigned
ENV NUXT_HOST=0.0.0.0
# set app port
ENV NUXT_PORT=3200

# expose 3000 on container
EXPOSE 3200:3200

# update and install dependency
RUN npm install --save
RUN npm run build

# start the app
CMD ["npm", "start"]
