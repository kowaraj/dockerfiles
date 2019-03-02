#!/bin/bash 

# host01 in ov_net01
docker run -it --name=kj_host01_ov_p --network=kj_ov_net01 --privileged kowaraj/base_it:v.0.1.0

# host02 in ov_net02
docker run -it --name=kj_host02_ov_p --network=kj_ov_net02 --privileged kowaraj/base_it:v.0.1.0

# router in between, connected to both net01 and net02
docker run -it --name=kj_host03_ov_p --network=kj_ov_net01 --privileged kowaraj/base_it:v.0.1.0
docker network connect kj_ov_net02 kj_host03_ov_p


