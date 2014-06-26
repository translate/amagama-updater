#!/bin/bash

data_root=`dirname $(readlink -e $0)`/${1:-data}

update_svn() {
	echo -n ${project_root}...
	if [ ! -d $project_root ]; then
		#echo "svn co $SVN_URL $project_root"
		svn co -q $SVN_URL $project_root
	else
		cd $project_root
		svn upgrade # Hitting this a few times so just make sure its upgraded
		#echo 'svn cleanup > /dev/null || true'
		svn cleanup > /dev/null || true
		#echo 'svn up'
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
		#echo "hg clone $HG_URL $project_root"
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
		#echo "git clone $GIT_URL $project_root"
		git clone -q $GIT_URL $project_root > /dev/null
	else
		pushd . > /dev/null
		cd $project_root
		git pull --rebase -q > /dev/null
		popd > /dev/null
	fi
	echo done
}

