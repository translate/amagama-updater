#!/bin/bash

#OK, this is not really zaf any more, but the same data, just moved to github.

. `dirname $0`/common.inc.sh

GIT_URL=git://github.com/translate/mozilla-l10n.git
GIT_URL=https://github.com/translate/mozilla-l10n.git
project_root="$data_root/zaf-po/mozilla-l10n"
update_git

#deprecated:
#GIT_URL=git://github.com/translate/mozilla-com.git
#project_root="$data_root/zaf-po/mozilla-com"
#update_git

GIT_URL=git://github.com/translate/mozilla-lang.git
GIT_URL=https://github.com/translate/mozilla-lang.git
project_root="$data_root/zaf-po/mozilla-lang"
update_git
