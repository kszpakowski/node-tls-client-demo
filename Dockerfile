FROM gcr.io/distroless/nodejs20-debian12
WORKDIR /home/node/app

COPY index.js ./

CMD ["index.js"]