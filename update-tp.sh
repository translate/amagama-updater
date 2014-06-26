#!/bin/bash

. `dirname $0`/common.inc.sh

project_root="$data_root/translationproject"

mkdir -p $project_root
cd $project_root
wget --mirror --no-parent http://translationproject.org/latest/
cd $data_root
