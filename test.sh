#!/usr/bin/env bash

discoverArch() {
  ARCH=$(uname -m)
  case $ARCH in
    x86) ARCH="386";;
    x86_64) ARCH="amd64";;
    i686) ARCH="386";;
    i386) ARCH="386";;
  esac
}

discoverArch

OS=$(echo `uname`|tr '[:upper:]' '[:lower:]')

echo $ARCH $OS
