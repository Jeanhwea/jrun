FROM ubuntu:18.04

LABEL maintainer="Jinghui Hu"

ADD assets /assets
RUN chmod +x /assets/setup.sh && /assets/setup.sh

CMD /usr/sbin/startup.sh
