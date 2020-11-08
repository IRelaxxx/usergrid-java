FROM akrahl/usergrid-java-jre

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends openjdk-14-jdk-headless&& \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
    
ENV JAVA_HOME /usr/lib/jvm/java-14-openjdk-amd64
    
CMD ["bash"]
