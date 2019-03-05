#!/bin/bash

conf () {
    echo "$1 [yes/no]"; 
    read x; 
    [ $? != 0 -o "${x}" != "yes" ] && { echo "You didn't say 'yes'. Exit."; exit 0; }
}

# check arguments
[ $# != 1 ] && { echo "Argument expected: v.X.Y.Z"; exit -1; } 
tag=$1; echo "Given tag : ${tag}"

# get last tag
source "./.last_tag"
[ $? != 0  -o -z "$LAST_TAG" ] && { 
    echo "File not found '.last_tag'.... Create one? (yes/no)"; 
    read x; [ $? != 0 -o "${x}" != "yes" ] && { echo "You didn't say 'yes'. Exit."; exit 0; }
}
echo "Last tag  : ${LAST_TAG}"

# check last tag and save it
[[ ! "$tag" > "$LAST_TAG" ]] && { echo "Error! Tag has to be greater than LAST_TAG"; exit -1; }
echo "Saving the new tag..."; echo "LAST_TAG=${tag}" > ./.last_tag

###
conf "Build 'base'? "
docker build -f ./base/Dockerfile -t kowaraj/base:${tag} ./base/

conf "Push 'base' to kowaraj/base:${tag} ?"
docker push "kowaraj/base:${tag}"

###
conf "Build 'base_it'? "
docker build -f ./base_it/Dockerfile -t kowaraj/base_it:${tag} ./base_it/

conf "Push 'base_it' to kowaraj/base_it:${tag} ?"
docker push "kowaraj/base_it:${tag}"
