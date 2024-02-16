FROM ubuntu:latest
LABEL authors="jasoncain"

ENTRYPOINT ["top", "-b"]