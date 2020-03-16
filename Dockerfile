FROM jrei/crystal-alpine

WORKDIR /home/app

ADD . .

RUN shards install
RUN crystal build server.cr

CMD ["./server"]