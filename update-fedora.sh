#!/bin/bash

. `dirname $0`/common.inc.sh
fedora_root="$data_root/fedora"

mkdir -p $fedora_root

do_stuff () {
    for m in $@; do
        dir=`echo $m | sed 's/\/cgit\/\(.*\)\/tree\/$/\1/'`
	cd $fedora_root
	GIT_URL=git://git.fedorahosted.org/$dir
	project_root=$dir
	update_git
    done
}

modules=`wget --no-proxy -o /dev/null -O- 'http://git.fedorahosted.org/cgit/?s=idle' | grep 'level-repo[^~]*$' | sed "s/^.*href='\([^']*\)'.*$/\1/"`
do_stuff $modules
for offset in `seq 50 50 400`; do
    modules=`wget --no-proxy -o /dev/null -O- 'http://git.fedorahosted.org/cgit/?s=idle&ofs='$offset | grep 'level-repo[^~]*$' | sed "s/^.*href='\([^']*\)'.*$/\1/"`
    do_stuff $modules
done
