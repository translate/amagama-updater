#!/bin/bash

. `dirname $0`/common.inc.sh

xfce_root="$data_root/xfce"

mkdir -p $xfce_root
cd $xfce_root

xmodules=`wget -o /dev/null -O- http://git.xfce.org | grep 'sublevel-repo[^~]*$' | sed "s/^.*href='\([^']*\)'.*$/\1/"`

for m in $xmodules; do
	project_root=`echo $m | sed 's/.*\/\(.*\)\/$/\1/'`
	GIT_URL=git://git.xfce.org/$project_root
	update_git
done
