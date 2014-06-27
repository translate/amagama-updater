#!/bin/bash

. `dirname $0`/common.inc.sh

project_root="$data_root/translationproject"

wget --mirror --no-parent -q -accept="*.po" -P $project_root http://translationproject.org/latest/
