#!/bin/bash

. `dirname $0`/common.inc.sh

tuxpaint_root="$data_root/tuxpaint"
CVSROOT=:pserver:anonymous@tuxpaint.cvs.sourceforge.net:/cvsroot/tuxpaint

mkdir -p $tuxpaint_root
cd $tuxpaint_root

project_root="tuxpaint/src/po"
update_cvs

project_root="tuxpaint-stamps/po"
update_cvs

project_root="tuxpaint-config/src/po"
update_cvs

project_root="tuxpaint-website/po"
update_cvs
