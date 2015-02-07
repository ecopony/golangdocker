FROM golang:latest

ADD . /go/src/github.com/ecopony/golangdocker
ADD gamedayapi /go/src/github.com/ecopony/gamedayapi

WORKDIR /go/src/github.com/ecopony/golangdocker
RUN go build
CMD ["./golangdocker"]

EXPOSE 4000

