#!/bin/bash

#OK, this is not really zaf any more, but the same data, just moved to github.

. `dirname $0`/common.inc.sh

project_root="$data_root/zaf-po/mozilla-l10n"
GIT_URL=git://github.com/translate/mozilla-l10n.git
update_git

#deprecated:
#project_root="$data_root/zaf-po/mozilla-com"
#GIT_URL=git://github.com/translate/mozilla-com.git
#update_git

project_root="$data_root/zaf-po/mozilla-lang"
GIT_URL=git://github.com/translate/mozilla-lang.git
update_git

project_root="$data_root/zaf-po/mozilla-gaia"
GIT_URL=git://github.com/translate/mozilla-gaia.git
update_git
