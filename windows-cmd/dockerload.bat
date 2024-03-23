@echo off

if not exist "dockerstorage" (
    echo No Docker.tar File to Load!!
) else (
    docker image load --input .\dockerstorage\macha-lang.tar
)
