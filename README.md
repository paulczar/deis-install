deis-install
============

Docker container for installing deis on an existing coreos cluster.

usage
-----

Run this from one of the core-os machines in the cluster.   Use the IP address that etcd is listening on.   The docker gateway should forward it through.

```
docker run -e DEIS_HOST=<IP-of-host> deis-install
```

License
-------

Copyright 2014 Paul Czarkowski

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
