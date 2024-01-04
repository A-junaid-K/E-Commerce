FROM golang:1.20.12-alpine3.19
WORKDIR /app
COPY . .
RUN go mod download
RUN go build -o main
EXPOSE 3000
CMD [ "./main" ]