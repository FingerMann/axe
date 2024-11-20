#!/usr/bin/env bash
# Copyright (c) 2021-2022 The Dash Core developers
# Distributed under the MIT software license, see the accompanying
# file COPYING or http://www.opensource.org/licenses/mit-license.php.

export LC_ALL=C

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$DIR"/../.. || exit

DOCKER_IMAGE=${DOCKER_IMAGE:-axerunners/axed-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}
DOCKER_RELATIVE_PATH=contrib/containers/deploy

BASE_BUILD_DIR=${BASE_BUILD_DIR:-.}


if [ -d $DOCKER_RELATIVE_PATH/bin ]; then
    rm $DOCKER_RELATIVE_PATH/bin/*
fi

mkdir $DOCKER_RELATIVE_PATH/bin
cp "$BASE_BUILD_DIR"/src/axed    $DOCKER_RELATIVE_PATH/bin/
cp "$BASE_BUILD_DIR"/src/axe-cli $DOCKER_RELATIVE_PATH/bin/
cp "$BASE_BUILD_DIR"/src/axe-tx  $DOCKER_RELATIVE_PATH/bin/
strip $DOCKER_RELATIVE_PATH/bin/axed
strip $DOCKER_RELATIVE_PATH/bin/axe-cli
strip $DOCKER_RELATIVE_PATH/bin/axe-tx

docker build --pull -t "$DOCKER_IMAGE":"$DOCKER_TAG" -f $DOCKER_RELATIVE_PATH/Dockerfile docker
