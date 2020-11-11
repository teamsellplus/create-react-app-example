FROM node:13.12.0-alpine


WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH


COPY package.json ./
#COPY package-lock.json ./
RUN npm install --silent
RUN npm install react-scripts@3.4.1 -g --silent
ENV name=buyer-frontend
ENV backend_endpoint=https://backend1.sellplus.com

# add app
COPY . ./

# start app
CMD ["npm", "start"]


