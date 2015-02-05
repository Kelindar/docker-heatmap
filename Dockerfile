FROM misakai/java
MAINTAINER Roman Atachiants "roman@misakai.com"


# We need git & maven to build 
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install git maven

#RUN git clone https://github.com/Kelindar/docker-heatmap.git /app

RUN mkdir /app
ADD ./* /app
RUN /app/build.sh

# Solr Port
EXPOSE 8983

CMD ["/run.sh"]
