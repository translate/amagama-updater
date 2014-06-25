#!/bin/bash

. `dirname $0`/common.inc.sh

GIT_URL=git://git.postgresql.org/git/pgtranslation/messages.git
project_root="$data_root/postgres"
update_git
