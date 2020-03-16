FROM jrei/crystal-alpine

WORKDIR /home/app

ADD . .

RUN crystal build server.cr

CMD ["./server"]