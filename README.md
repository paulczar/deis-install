deis-install
============

Docker container for installing deis on an existing coreos cluster.

usage
-----

Run this from one of the core-os machines in the cluster.   Use the IP address that etcd is listening on.   The docker gateway should forward it through.

```
docker run -e DEIS_HOST=<IP-of-host> deis-install
```
