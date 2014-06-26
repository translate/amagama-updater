#!/bin/bash

data_root=`dirname $(readlink -e $0)`/${1:-data}


update_cvs() {
	echo -n ${project_root}...
	if [ ! -d $project_root ]; then
		cvs -Q -d $CVSROOT co -P $project_root
	else
		pushd . > /dev/null
		cd $project_root
		cvs -Q up
		popd > /dev/null
	fi
	echo done
}

update_svn() {
	echo -n ${project_root}...
	if [ ! -d $project_root ]; then
		svn co -q $SVN_URL $project_root
	else
		cd $project_root
		svn up -q  # Hitting this a few times so just make sure its upgraded
		svn cleanup > /dev/null || true
		svn up -q
	fi
	echo done
}

update_bzr() {
	echo -n ${project_root}...
	if [ ! -d $project_root ]; then
		cd $data_root
		bzr branch -q $BZR_URL $project_root
	else
		pushd . > /dev/null
		cd $project_root
		bzr pull -q
		popd > /dev/null
	fi
	echo done
}

update_hg() {
	echo -n ${project_root}...
	if [ ! -d $project_root ]; then
		hg clone -q $HG_URL $project_root > /dev/null
	else
		pushd . > /dev/null
		cd $project_root
		hg pull -u -q > /dev/null
		popd > /dev/null
	fi
	echo done
}

update_git() {
	echo -n ${project_root}...
	if [ ! -d $project_root ]; then
		git clone -q $GIT_URL $project_root > /dev/null
	else
		pushd . > /dev/null
		cd $project_root
		git pull --rebase -q > /dev/null
		popd > /dev/null
	fi
	echo done
}
