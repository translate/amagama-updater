#!/bin/bash

. `dirname $0`/helpers

GIT_URL=git://git.postgresql.org/git/pgtranslation/messages.git
project_root="$data_root/postgres"
update_git
