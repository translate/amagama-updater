#!/bin/bash

. `dirname $0`/common.inc.sh

project_root="$data_root/postgres"
GIT_URL=git://git.postgresql.org/git/pgtranslation/messages.git
update_git
