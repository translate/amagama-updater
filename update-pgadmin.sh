#!/bin/bash

. `dirname $0`/common.inc.sh

project_root="$data_root/pgadmin"
GIT_URL=git://git.postgresql.org/git/pgadmin3.git
update_git

project_root="$data_root/pgadmin-www"
GIT_URL=git://git.postgresql.org/git/pgadmin-www.git
update_git
