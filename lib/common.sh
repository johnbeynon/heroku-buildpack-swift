#!/usr/bin/env bash

cache_copy() {
  rel_dir=$1
  from_dir=$2
  to_dir=$3
  rm -rf $to_dir/$rel_dir
  if [ -d $from_dir/$rel_dir ]; then
    mkdir -p $to_dir/$rel_dir
    cp -pr $from_dir/$rel_dir/. $to_dir/$rel_dir
  fi
}

# Install Swift
install_swift() {
  local version="$1"
  local platform="$2"

  echo "Downloading and installing Swift $version..."
  local download_url="https://swift.org/builds/ubuntu1404/swift-$version/swift-$version-$platform.tar.gz"
  curl "$download_url" --silent --fail -o /tmp/swift.tar.gz || (echo "Unable to download Swift $version; does it exist?" && false)
  tar xzf /tmp/swift.tar.gz -C /tmp
  mv /tmp/swift-$version-$platform $dir
  chmod +x $dir/usr/bin/*
}
