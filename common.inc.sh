#!/bin/bash

data_root=$(dirname $0)/data


update_cvs() {
	if [ ! -d $project_root ]; then
		pushd . > /dev/null
		mkdir -p $data_root/$project
		cd $data_root/$project
		cvs -Q -d $cvs_root co -d $(basename $project_root) -P $vcs_url
		popd > /dev/null
	else
		pushd . > /dev/null
		cd $project_root
		cvs -Q -d $cvs_root up
		popd > /dev/null
	fi
}

update_svn() {
	if [ ! -d $project_root ]; then
		svn co -q $vcs_url $project_root
	else
		pushd . > /dev/null
		cd $project_root
		svn cleanup > /dev/null || true
		svn up -q  # Hitting this a few times so just make sure its upgraded
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
	# $1 is the repo string
	vcs_type=$(echo $1o | cut -d"+" -f1)
	vcs_url=$(echo $1 | cut -d"+" -f2)
}

update() {
	echo $project
	if [[ ${#subproject[@]} -gt 0 ]]; then
		for index in $(seq 0 $((${#subproject[@]} - 1)))
		do
			echo "- ${subproject[index]}"
			project_root=$data_root/$project/${subproject[index]}
			_split_repo ${repo[index]}
			update_$vcs_type
		done
	else
		project_root=$data_root/$project
		_split_repo $repo
		update_$vcs_type
	fi
}
