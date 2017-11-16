#Step 1.
FROM node:6.11-wheezy

#Step 2
LABEL version="1.0"
LABEL description="This is our base docker image"
LABEL maintainer "mozart.osita@gmail.com"

#Step 3.
ENV appDir /var/www/app/current

#Step 5.
ENV NODE_ENV production

#Step 6..
# Set the work directory
RUN mkdir -p /var/www/app/current
WORKDIR ${appDir}

#Step 7
ADD package.json ./
RUN yarn install --production


RUN yarn global add forever pm2

ADD . /var/www/app/current

EXPOSE 4500

CMD ["pm2", "start", "processes.json", "--no-daemon"]