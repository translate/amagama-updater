#!/bin/bash

. `dirname $0`/common.inc.sh

ubuntu_root=$data_root/ubuntu

mkdir -p $ubuntu_root

project_root="$ubuntu_root/software-center"
BZR_URL=lp:~mvo/software-center/rosetta-i18n-export
update_bzr

project_root="$ubuntu_root/gwibber"
BZR_URL=lp:~oldman-deactivatedaccount/gwibber/gwibber-translations
update_bzr

project_root="$ubuntu_root/calibre"
BZR_URL=lp:~kovid/calibre/translations
update_bzr

project_root="$ubuntu_root/openshot"
BZR_URL=lp:~openshot.code/openshot/translations
update_bzr

project_root="$ubuntu_root/roundcubemail"
BZR_URL=lp:roundcubemail
update_bzr

#mozilla style:
project_root="$ubuntu_root/evergreen"
BZR_URL=lp:~denials/evergreen/translation-export
update_bzr

project_root="$ubuntu_root/stellarium"
BZR_URL=lp:stellarium
update_bzr
