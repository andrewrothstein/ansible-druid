#!/usr/bin/env sh
DIR=~/Downloads
MIRROR=https://www.apache.org/dist

dl_ver() {
    local ver=$1
    local url=$MIRROR/druid/$ver/apache-druid-${ver}-bin.tar.gz.sha512

    printf "  # %s\n" $url
    printf "  '%s': sha512:%s\n" $ver $(curl -sSL $url)
}

dl_ver ${1:-0.17.0}
