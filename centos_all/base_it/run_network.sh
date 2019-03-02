#!/bin/bash 

# host01 in net01
docker run -it --name=kj_host01 --network=kj_net01 kowaraj/test:kj_base_it bash

# host02 in net02
docker run -it --name=kj_host02 --network=kj_net02 kowaraj/test:kj_base_it bash

# router in between, connected to both net01 and net02
docker run -it --name=kj_host03 --network=kj_net01 kowaraj/test:kj_base_it bash
docker network connect kj_net02 kj_host03


