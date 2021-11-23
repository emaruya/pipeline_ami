#!/bin/bash

kube_adm=$(kubeadm version)

regex_kube='kubeadm version:'

docker=$(kubeadm version)

regex_docker='Docker version'

if [[ $kube_adm =~ $regex_kube ] &&  [$docker =~ $regex_docker ]]
then 
    echo "::::: kubernetes e docker no ar :::::"
    exit 0
else
    echo "::::: kubernetes e docker não estão no ar :::::"
    exit 1
fi