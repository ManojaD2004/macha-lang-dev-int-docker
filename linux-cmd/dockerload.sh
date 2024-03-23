#!/bin/bash

if [ ! -d "dockerstorage" ];
    then
        echo "No Docker.tar File to Load!!"
    else
        docker image load --input ./dockerstorage/macha-lang.tar
fi