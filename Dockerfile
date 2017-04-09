# escape=`

FROM openjdk:jre-alpine

LABEL maintainer "andrew.p.moore94@gmail.com"

RUN apk add --update --no-cache `
    unzip `
    wget
RUN wget http://nlp.stanford.edu/software/stanford-corenlp-full-2016-10-31.zip
RUN unzip stanford-corenlp-full-2016-10-31.zip && `
    rm stanford-corenlp-full-2016-10-31.zip

WORKDIR stanford-corenlp-full-2016-10-31

ENTRYPOINT ["/usr/bin/java", "-cp", "*", "-mx4g", "edu.stanford.nlp.pipeline.StanfordCoreNLPServer"]
