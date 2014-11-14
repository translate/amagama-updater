#!/bin/bash

data_root=`dirname $(readlink -e $0)`/${1:-data}


update_cvs() {
	if [ ! -d $project_root ]; then
		cvs -Q -d $CVSROOT co -P $project_root
	else
		pushd . > /dev/null
		cd $project_root
		cvs -Q up
		popd > /dev/null
	fi
}

update_svn() {
	if [ ! -d $project_root ]; then
		svn co -q $SVN_URL $project_root
	else
		pushd . > /dev/null
		cd $project_root
		svn up -q  # Hitting this a few times so just make sure its upgraded
		svn cleanup > /dev/null || true
		svn up -q
		popd > /dev/null
	fi
}

update_bzr() {
	if [ ! -d $project_root ]; then
		cd $data_root
		bzr branch -q $BZR_URL $project_root
	else
		pushd . > /dev/null
		cd $project_root
		bzr pull -q
		popd > /dev/null
	fi
}

update_hg() {
	if [ ! -d $project_root ]; then
		hg clone -q $HG_URL $project_root
	else
		pushd . > /dev/null
		cd $project_root
		hg pull -u -q
		popd > /dev/null
	fi
}

update_git() {
	if [ ! -d $project_root ]; then
		git clone -q $GIT_URL $project_root
	else
		pushd . > /dev/null
		cd $project_root
		git pull --rebase -q
		popd > /dev/null
	fi
}
