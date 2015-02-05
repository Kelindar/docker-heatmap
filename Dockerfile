FROM manycore/java
MAINTAINER Roman Atachiants "atachiar@scss.tcd.ie"

RUN git clone https://github.com/manycore/docker-solr.git /app

#RUN mkdir /app
#ADD ./* /app/*
#RUN sudo echo
#RUN sudo /app/build.sh
RUN sudo mvn --settings /app/settings.xml -f /app/pom.xml clean package -Ddist.dir=deps

# Solr Port
EXPOSE 8983

CMD ["/app/run.sh"]
