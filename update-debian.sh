#!/bin/bash

. `dirname $0`/common.inc.sh

debian_root="$data_root/debian"
debian_download="$data_root/debian-download"

mkdir -p $debian_root

#wget --mirror --no-parent --reject=*-stamp*.po -P $debian_download  http://i18n.debian.net/compendia/po/

find $debian_download/i18n.debian.net/compendia/po -name compendium-*.po | while read i; do
	msggrep -v --msgid -e '#-#-#-' $i > $debian_root/`basename $i`
done
