FROM --platform=linux/amd64 ubuntu:latest AS base
RUN apt-get update && apt-get install -y curl tar
RUN curl -Lk 'https://code.visualstudio.com/sha/download?build=stable&os=cli-alpine-x64' --output vscode_cli.tar.gz && tar -xf vscode_cli.tar.gz && rm vscode_cli.tar.gz
CMD ["/code","--cli-data-dir=.code","tunnel","--random-name","--accept-server-license-terms"]