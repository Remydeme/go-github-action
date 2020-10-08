FROM golang:alpine


MAINTAINER  DEME Rémy

WORKDIR /root

COPY . .

RUN go build -o helloworld.go

FROM golang:alpine

WORKDIR /deploy

COPY --from=0 /root/ .

CMD ["./helloworld"]
