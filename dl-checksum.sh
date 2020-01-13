#!/usr/bin/env sh
DIR=~/Downloads
MIRROR=https://archive.apache.org/dist/incubator/druid

dl_ver() {
    local ver=$1
    local url=$MIRROR/$ver/apache-druid-${ver}-bin.tar.gz.sha512

    printf "  # %s\n" $url
    printf "  '%s': sha512:%s\n" $ver $(curl -sSL $url)
}

dl_ver ${1:-0.16.1-incubating}
