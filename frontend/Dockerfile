FROM node:18.16-bullseye

# set working directory

# add `/app/node_modules/.bin` to $PATH
ENV PATH node_modules/.bin:$PATH

# install app dependencies
COPY ./frontend .
# COPY ./frontend/package-lock.json ./
RUN npm install --silent


# add app
COPY . ./

# start app
CMD ["npm", "start"]