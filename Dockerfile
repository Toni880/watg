FROM golang:1.19.8-alpine
RUN apk --no-cache add gcc g++ make git libwebp-dev libwebp-tools ffmpeg imagemagick
WORKDIR /go/src/watgbridge
COPY . ./
RUN go mod download
RUN go build
CMD ["./watgbridge"]
