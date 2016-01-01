FROM tomee:8-jre-1.7.3-webprofile

WORKDIR /usr/local

RUN mkdir data
RUN mkdir bakdata

ENV STOCK_BAK_DATA /usr/local/bakdata
ENV STOCK_BASE_DATA /usr/local/data

CMD ["catalina.sh", "run"]