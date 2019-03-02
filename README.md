# Readme

The repo contains:

```
[: ~/centos_all ] ls -la 
drwxr-xr-x   5 kowaraj  staff  170 Mar  1 18:05 base         : base image
drwxr-xr-x   6 kowaraj  staff  204 Mar  2 13:06 base_it      : base plus some IT tools, like netstat, iproute, lsof
drwxr-xr-x   3 kowaraj  staff  102 Mar  1 16:53 base_it_pro  : base_it plus g++, python
drwxr-xr-x   3 kowaraj  staff  102 Mar  1 16:53 base_it_web  : base_it plus npm, ...
```

## Run 2 nets and a router in between

It is based on the image `kowaraj/test:kj_base_it`. Run `create_network.sh` and then `run_networks.sh`.

```
[: ~/centos_all/base_it ] ls -la
-rw-r--r--  1 kowaraj  staff  189 Mar  1 16:52 Dockerfile         : 
-rwxr-xr-x  1 kowaraj  staff   74 Mar  1 18:12 create_network.sh  : 
-rw-r--r--  1 kowaraj  staff  391 Mar  2 13:06 run_network.sh     : 
```


