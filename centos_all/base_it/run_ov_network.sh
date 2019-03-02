#!/bin/bash 

# host01 in ov_net01
docker run -it --name=kj_host01_ov --network=kj_ov_net01 kowaraj/test:kj_base_it bash

# host02 in ov_net02
docker run -it --name=kj_host02_ov --network=kj_ov_net02 kowaraj/test:kj_base_it bash

# router in between, connected to both net01 and net02
docker run -it --name=kj_host03_ov --network=kj_ov_net01 kowaraj/test:kj_base_it bash
docker network connect kj_ov_net02 kj_host03_ov


