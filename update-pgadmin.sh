#!/bin/bash

. `dirname $0`/helpers

GIT_URL=git://git.postgresql.org/git/pgadmin3.git
project_root="$data_root/pgadmin"
update_git
GIT_URL=git://git.postgresql.org/git/pgadmin-www.git
project_root="$data_root/pgadmin-www"
update_git
