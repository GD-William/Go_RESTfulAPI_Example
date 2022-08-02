FROM golang:1.11.2-alpine
WORKDIR /api_server
ADD . /api_server
RUN cd //api_server && go build -o mainexec
EXPOSE 8080
ENTRYPOINT ./mainexec