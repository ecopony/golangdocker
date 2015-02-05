FROM golang:latest

ADD . /go/src/app

WORKDIR /go/src/app
RUN go build
CMD ["./app"]

EXPOSE 4000

