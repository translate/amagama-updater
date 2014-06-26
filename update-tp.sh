#!/bin/bash

. `dirname $0`/common.inc.sh

project_root="$data_root/translationproject"

if [ ! -d $project_root ]; then
    mkdir $project_root
fi


cd $project_root
wget --mirror --no-parent http://translationproject.org/latest/
cd $data_root
