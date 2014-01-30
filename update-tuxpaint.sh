#!/bin/bash

. `dirname $0`/helpers
project_root="$data_root/tuxpaint"

modules="tuxpaint/src/po tuxpaint-stamps/po tuxpaint-config/src/po tuxpaint-website/po"

pushd .

if [ ! -d $project_root ]; then
	mkdir $project_root
	cd $project_root
#	echo "" | cvs -d:pserver:anonymous@tuxpaint.cvs.sourceforge.net:/cvsroot/tuxpaint login
        for module in $modules; do
		echo 'cvs -d:pserver:anonymous@tuxpaint.cvs.sourceforge.net:/cvsroot/tuxpaint co -P $module'
		cvs -d:pserver:anonymous@tuxpaint.cvs.sourceforge.net:/cvsroot/tuxpaint co -P $module
	done
else
	cd $project_root
	for module in $modules; do
		pushd . > /dev/null
		echo "cvs up ($module)"
		cd $module
		cvs up
		popd > /dev/null
	done
fi

popd
