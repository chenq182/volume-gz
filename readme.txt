#!/bin/sh

docker run --rm -v some-volume:/volume:ro -v $PWD:/backup chenq/volume-gz
docker run --rm -v some-volume:/volume -v $PWD/some-volume.tar.gz:/backup:ro chenq/volume-gz
