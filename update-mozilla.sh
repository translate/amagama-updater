#!/bin/bash

. `dirname $0`/common.inc.sh

project_root="$data_root/mozilla-l10n"
GIT_URL=git://github.com/translate/mozilla-l10n.git
update_git

project_root="$data_root/mozilla-lang"
GIT_URL=git://github.com/translate/mozilla-lang.git
update_git

project_root="$data_root/mozilla-gaia"
GIT_URL=git://github.com/translate/mozilla-gaia.git
update_git
