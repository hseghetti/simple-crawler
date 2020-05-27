FROM smartive/nutch:es-5
MAINTAINER mema <hseghetti@gmail.com>

ENV NUTCH_HOME /root/nutch

WORKDIR /root/

#ADD startup.sh /root/startup.sh
#RUN chmod +x /root/startup.sh

ENTRYPOINT ["/root/startup.sh"]
