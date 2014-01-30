#!/bin/bash

. `dirname $0`/helpers

audacity_root="$data_root/audacity"

mkdir -p $audacity_root

project_root=$audacity_root/audacity-src
SVN_URL=http://audacity.googlecode.com/svn/audacity-src/trunk/locale
update_svn

project_root=$audacity_root/website
SVN_URL=http://audacity.googlecode.com/svn/website/trunk/htdocs/locale
update_svn
