FROM manycore/java
MAINTAINER Roman Atachiants "atachiar@scss.tcd.ie"

#RUN git clone https://github.com/Kelindar/docker-heatmap.git /app

RUN mkdir /app
ADD ./* /app/*
RUN /app/build.sh

# Solr Port
EXPOSE 8983

CMD ["/run.sh"]
