#!/bin/bash

. `dirname $0`/common.inc.sh

debian_root="$data_root/debian"
debian_download="$data_root/debian-download"

mkdir -p $debian_root
mkdir -p $debian_download

pushd .
#cd $debian_download
#wget --mirror --no-parent --reject=*-stamp*.po http://i18n.debian.net/compendia/po/
popd

find $debian_download/i18n.debian.net/compendia/po -name compendium-*.po | while read i; do
	msggrep -v --msgid -e '#-#-#-' $i > $debian_root/`basename $i`
done
