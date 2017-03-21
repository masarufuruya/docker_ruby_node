FROM ruby:2.2.3

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - && \
    apt-get install -y build-essential cron nodejs && \
    apt-get clean && rm -r /var/lib/apt/lists/*

RUN cd ~/ && \
    wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2

RUN cd /usr/local/src && \
    tar jxf ~/phantomjs-2.1.1-linux-x86_64.tar.bz2

RUN mv /usr/local/src/phantomjs-2.1.1-linux-x86_64 /usr/local/src/phantomjs
RUN ln -s /usr/local/src/phantomjs/bin/phantomjs /usr/local/bin/phantomjs
