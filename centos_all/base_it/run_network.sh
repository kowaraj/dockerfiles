#!/bin/bash 
docker run -it --name=kj_host01 --network=kj_net01 kowaraj/test:kj_base_it bash
docker run -it --name=kj_host02 --network=kj_net02 kowaraj/test:kj_base_it bash
docker run -it --name=kj_host03 --network=kj_net01 kowaraj/test:kj_base_it bash
