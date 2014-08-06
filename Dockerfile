FROM google/golang

RUN apt-get -yqq update && apt-get -yqq install bc ssh vim

RUN cd /root && \
  git clone https://github.com/coreos/fleet.git && \
  cd fleet && \
  ./build && \
  mv bin/fleetctl /usr/bin/fleetctl
  
RUN cd /root && \
  git clone https://github.com/coreos/etcd.git && \
  cd etcd && \
  ./build && \
  mv bin/etcdctl /usr/bin/etcdctl

ADD run_me /root/run_me

RUN chmod +x /root/run_me

CMD /root/run_me

