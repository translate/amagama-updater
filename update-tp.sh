#!/bin/bash

. `dirname $0`/common.inc.sh

project_root="$data_root/translationproject"

mkdir -p $project_root
wget --mirror --no-parent -P $project_root http://translationproject.org/latest/
