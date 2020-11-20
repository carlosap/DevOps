FROM node:latest as build
ARG REACT_APP_SERVICES_HOST=/services/m
WORKDIR /app
COPY . .

RUN yarn install
RUN yarn build

FROM nginx:latest

COPY --from=build /app/build /usr/share/nginx/html