#!/bin/bash

current_dir=`pwd`
steamcmd_dir="$HOME/steamcmd"
install_dir="$HOME/dontstarvetogether_dedicated_server"
klei_dir="$HOME/.klei"

function fail()
{
        echo Error: "$@" >&2
        exit 1
}

function check_for_file()
{
    if [ ! -e "$1" ]; then
            fail "Missing file: $1"
    fi
}

mkdir -p $klei_dir
cp -r $current_dir/DoNotStarveTogether $klei_dir

cd "$steamcmd_dir" || fail "Missing $steamcmd_dir directory!"
check_for_file "steamcmd.sh"
./steamcmd.sh +force_install_dir "$install_dir" +login anonymous +app_update 343050 validate +quit
