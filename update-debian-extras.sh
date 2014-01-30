#!/bin/bash

# Some useful things hosted at Debian

. `dirname $0`/helpers

GIT_URL=git://anonscm.debian.org/pkg-manpages-fr/manpages-fr-extra.git
project_root="$data_root/debian-extra/manpages-fr-extra"
update_git

GIT_URL=git://anonscm.debian.org/pkg-manpages-fr/manpages-fr.git
project_root="$data_root/debian-extra/manpages-fr"
update_git

GIT_URL=git://anonscm.debian.org/manpages-de/manpages-de.git
project_root="$data_root/debian-extra/manpages-de"
update_git

#GIT_URL=git://git.debian.org/git/iso-codes/iso-codes.git
GIT_URL=git://anonscm.debian.org/iso-codes/iso-codes.git
project_root="$data_root/debian-extra/iso-codes"
update_git

GIT_URL=git://anonscm.debian.org/dpkg/dpkg.git
project_root="$data_root/debian-extra/dpkg"
update_git

GIT_URL=git://anonscm.debian.org/aptitude/aptitude.git
project_root="$data_root/debian-extra/aptitude"
update_git
