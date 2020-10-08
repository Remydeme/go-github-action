FROM golang:alpine


MAINTAINER  DEME Rémy

WORKDIR /root

COPY . .

RUN go build helloworld


FROM golang:alpine

WORKDIR /deploy

COPY --from=0 /root/ .

CMD ["./helloworld"]
