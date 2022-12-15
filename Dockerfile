FROM ubuntu:latest
MAINTAINER Brisa Menescaldi <bmenescaldi@gmail.com>

ADD statsWords.sh .
ADD statsUsageWords.sh .
ADD findNames.sh .
ADD statsSentences.sh .
ADD blankLinesCounter.sh . 
ADD menu.sh .
ADD texto.txt .

ENTRYPOINT ./menu.sh
