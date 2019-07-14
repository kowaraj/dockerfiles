# Building a docker image with nvm and node 

## Build

### 1. Clone the nvm-sh git repo

See the `Dockerfile` in `https://github.com/nvm-sh/nvm`

Current folder content:
```
[kowaraj@ams-usba2eth001: ~/src/dockerfiles/centos_all/base_it_pro ] ls -la
-rw-r--r--   1 kowaraj  staff  1920 Jul 14 11:31 Dockerfile
-rw-r--r--   1 kowaraj  staff    43 Jul 14 11:02 build.sh
drwxr-xr-x  24 kowaraj  staff   816 Jul 14 11:29 nvm_git_cloned
```

### 2. Clone the nvm-sh git repo

Then start the build:
```
bash ./build.sh
```

### 3. This image has been pushed to Docker.hub

```
[kowaraj@ams-usba2eth001: ~/docker_src ] docker push kowaraj/test:kj_base_pro
```

