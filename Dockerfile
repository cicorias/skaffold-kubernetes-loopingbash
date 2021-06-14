FROM ubuntu:18.04
LABEL maintainer "Shawn Cicoriaa"
RUN useradd -m curluser
USER curluser

RUN ls -alt
ADD --chown=curluser:curluser loopCurl.sh /home/curluser
RUN chmod +x /home/curluser/loopCurl.sh 

WORKDIR /home/curluser/
CMD /home/curluser/loopCurl.sh 