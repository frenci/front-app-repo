
FROM nginx:latest
LABEL Author="frencirama@amazon.com"


RUN mkdir /app
WORKDIR /app


RUN mkdir ./build


ADD ./build ./build


RUN rm /etc/nginx/conf.d/default.conf


COPY ./nginx.conf /etc/nginx/conf.d


EXPOSE 80


CMD ["nginx", "-g", "daemon off;"]
