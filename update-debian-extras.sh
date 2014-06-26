#!/bin/bash

# Some useful things hosted at Debian

. `dirname $0`/common.inc.sh

project_root="$data_root/debian-extra/manpages-fr-extra"
GIT_URL=git://anonscm.debian.org/pkg-manpages-fr/manpages-fr-extra.git
update_git

project_root="$data_root/debian-extra/manpages-fr"
GIT_URL=git://anonscm.debian.org/pkg-manpages-fr/manpages-fr.git
update_git

project_root="$data_root/debian-extra/manpages-de"
GIT_URL=git://anonscm.debian.org/manpages-de/manpages-de.git
update_git

project_root="$data_root/debian-extra/iso-codes"
GIT_URL=git://anonscm.debian.org/iso-codes/iso-codes.git
update_git

project_root="$data_root/debian-extra/dpkg"
GIT_URL=git://anonscm.debian.org/dpkg/dpkg.git
update_git

project_root="$data_root/debian-extra/aptitude"
GIT_URL=git://anonscm.debian.org/aptitude/aptitude.git
update_git
