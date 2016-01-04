FROM tomee:8-jre-1.7.3-webprofile

WORKDIR /usr/local

RUN mkdir data
RUN mkdir bakdata
RUN echo "Asia/Shanghai" > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata

ENV STOCK_BAK_DIR /usr/local/bakdata
ENV STOCK_BASE_DIR /usr/local/data

CMD ["catalina.sh", "run"]