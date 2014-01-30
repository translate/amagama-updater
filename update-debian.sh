#!/bin/bash

. `dirname $0`/helpers

debian_root="$data_root/debian"

mkdir -p $debian_root
mkdir -p $debian_root-download

pushd .
#cd $debian_root-download
#wget --mirror --no-parent --reject=*-stamp*.po http://i18n.debian.net/compendia/po/
popd

find $debian_root-download/i18n.debian.net/compendia/po -name compendium-*.po| while read i; do
    msggrep -v --msgid -e '#-#-#-' $i > $debian_root/`basename $i`
done
