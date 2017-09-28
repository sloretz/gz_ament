# Gazebo using Ament

This repo contains everything needed to build gazebo using ament.

## Prerequisites

* [vcstool](https://github.com/vcstools/vcstools)
* python 3


## First time setup

1. Clone this repo

    ```
    git clone git@github.com:sloretz/gzecs.git
    cd gzecs
    ```

1. Use vcstool to checkout all of the requried repos for the version of gazebo you're interested in

    ```
    cd ws_gz_7
    vcs import < ./repos
    ```

1. Make symbolic links to package.xml files

    ```
    ./scripts/make_symlinks.bash
    ```

1. Build the ament workspace

    ```
    ./src/ament/ament_tools/scripts/ament.py build
    ```

## Subsequent builds

1. Source the workspace before using it

    ```
    source install/local_setup.bash
    ```

1. Run ament to build stuff

    ```
    ament build
    ```

1. Run ament to build and run tests

    ```
    ament test --only-packages ign_common
    ```

