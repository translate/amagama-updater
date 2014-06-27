#!/bin/bash

. `dirname $0`/common.inc.sh

fedora_root="$data_root/fedora"

mkdir -p $fedora_root
cd $fedora_root

do_stuff () {
	for m in $@; do
		project_root=`echo $m | sed 's/\/cgit\/\(.*\)\/tree\/$/\1/'`
		GIT_URL=git://git.fedorahosted.org/$project_root
		update_git
	done
}

for offset in `seq 0 50 400`; do
	modules=`wget --no-proxy -o /dev/null -O- 'http://git.fedorahosted.org/cgit/?s=idle&ofs='$offset | grep 'level-repo[^~]*$' | sed "s/^.*href='\([^']*\)'.*$/\1/"`
	do_stuff $modules
done
