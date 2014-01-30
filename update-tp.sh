#!/bin/bash

. `dirname $0`/helpers
project_root="$data_root/translationproject"

if [ ! -d $project_root ]; then
    mkdir $project_root
fi


pushd .
cd $project_root
wget --mirror --no-parent http://translationproject.org/latest/
popd
