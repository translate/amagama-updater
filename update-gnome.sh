#!/bin/bash

. `dirname $0`/helpers
gnome_root="$data_root/gnome"

mkdir -p $gnome_root

cd $gnome_root

xmodules=`wget -o /dev/null --no-proxy -O- http://git.gnome.org | grep 'sublevel-repo[^~]*$' | sed "s/^.*href='\([^']*\)'.*$/\1/"`
for m in $xmodules; do
    project_root=`echo $m | sed 's/.*\/\(.*\)\/$/\1/'`
    GIT_URL=git://git.gnome.org/$project_root
    update_git
done
