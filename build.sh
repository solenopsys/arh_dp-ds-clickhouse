#!/bin/sh

helm_build_push(){
  FN=${NAME}-${VER}.tgz
  rm ${FN}
  helm package ./install --version ${VER}
  curl --data-binary "@${FN}" http://helm.alexstorm.solenopsys.org/api/charts
}

NAME=solenopsys-ds-clickhouse
VER=0.1.3

helm_build_push






