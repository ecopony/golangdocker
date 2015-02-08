FROM golang:latest

ADD . /go/src/github.com/ecopony/golangdocker

WORKDIR /go/src/github.com/ecopony/golangdocker
RUN go get github.com/ecopony/gamedayapi
RUN go build
CMD ["./golangdocker"]

EXPOSE 4000

