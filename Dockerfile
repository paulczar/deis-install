FROM google/golang

RUN apt-get -yqq update && apt-get -yqq install bc

RUN cd /root && \
  git clone https://github.com/coreos/fleet.git && \
  cd fleet && \
  ./build && \
  mv bin/fleetctl /usr/bin/fleetctl

ADD run_me /root/run_me

RUN chmod +x /root/run_me

CMD /root/run_me

