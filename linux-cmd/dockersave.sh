#!/bin/bash

if [ ! -d "dockerstorage" ];
    then
        mkdir dockerstorage
        docker save -o ./dockerstorage/macha-lang.tar $(docker image list --format "{{.Repository}}")
    else
        docker save -o ./dockerstorage/macha-lang.tar $(docker image list --format "{{.Repository}}")
        
fi