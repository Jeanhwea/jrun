FROM ubuntu:18.04

LABEL maintainer="Jinghui Hu"

ADD assets /assets
RUN chmod +x /assets/setup.sh && /assets/setup.sh

ENV JAVA_HOME "/usr/local/java/jdk1.8.0_231"
ENV PATH "$JAVA_HOME/bin:$PATH"
ENV LANG "C.UTF-8"

CMD /usr/sbin/startup.sh
