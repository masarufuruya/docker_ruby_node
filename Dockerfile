#Debianだとサイズが重すぎるのでalpineで軽量化
FROM ruby:2.2.6-alpine

#パッケージマネージャーを最新に更新
RUN apk update

#JS実行環境用にNodeをインストール
RUN apk --no-cache add nodejs=6.7.0-r0

#フィーチャーテスト用にphantomjsインストール
RUN apk add --no-cache curl fontconfig
RUN mkdir -p /usr/share && \
  cd /usr/share \
  && curl -L https://github.com/Overbryd/docker-phantomjs-alpine/releases/download/2.11/phantomjs-alpine-x86_64.tar.bz2 | tar xj \
  && ln -s /usr/share/phantomjs/phantomjs /usr/bin/phantomjs
