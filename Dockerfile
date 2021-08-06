FROM node:12-buster-slim
RUN addgroup --system nodejs && adduser --system --no-create-home --ingroup nodejs nodejs
COPY index.js /index.js
EXPOSE 3000

RUN apt-get update && \
    apt upgrade -y
RUN apt-get install -y locales
RUN echo "ja_JP UTF-8" > /etc/locale.gen
RUN locale-gen ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP.ja
ENV LC_ALL ja_JP.UTF-8

RUN npm install express --save

USER nodejs:nodejs

ENTRYPOINT ["node","/index.js"]