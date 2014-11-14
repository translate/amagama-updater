#!/bin/bash

data_root=$(dirname $0)/${1:-data}


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
		svn co -q $vcs_url $project_root
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
		bzr branch -q $vcs_url $project_root
	else
		pushd . > /dev/null
		cd $project_root
		bzr pull -q
		popd > /dev/null
	fi
}

update_hg() {
	if [ ! -d $project_root ]; then
		hg clone -q $vcs_url $project_root
	else
		pushd . > /dev/null
		cd $project_root
		hg pull -u -q
		popd > /dev/null
	fi
}

update_git() {
	if [ ! -d $project_root ]; then
		git clone -q $vcs_url $project_root
	else
		pushd . > /dev/null
		cd $project_root
		git pull --rebase -q
		popd > /dev/null
	fi
}

_split_repo() {
	vcs_type=$(echo $repo | cut -d"+" -f1)
	vcs_url=$(echo $repo | cut -d"+" -f2)
}

update() {
	_split_repo
	echo $project
	project_root=$data_root/$project
	update_$vcs_type
}
