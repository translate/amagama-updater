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
		svn up -q
		popd > /dev/null
	fi
}

update_bzr() {
	if [ ! -d $project_root ]; then
		mkdir -p $(dirname $project_root)
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
	elif [[ $iterator ]]; then
		for iter in $iterator
		do
			echo "- $iter"
			project_root=$data_root/$project/$iter
			_split_repo $(echo $repo | sed "s#<iterator>#$iter#")
			update_$vcs_type
		done
	else
		project_root=$data_root/$project
		_split_repo $repo
		update_$vcs_type
	fi
}

language_code() {
	# Return the correct langauge code for this language
	code=$1
	for l in $language_mapping
	do
		from=$(echo $l | cut -d":" -f1)
		to=$(echo $l | cut -d":" -f2)
		if [[ $code == $from ]]; then
			echo $to
			return
		fi
	done
	echo $code
}

maxjobs=8
amagama_loader() {
	while [ $# -gt 0 ]; do
		count=(`jobs -p`)
		if [ ${#count[@]} -lt $maxjobs ]; then
			file=$1
			lang=$(language_code $(basename $file .po))
			echo "~/amagama/amagama/bin/amagama-manage build_tmdb -s en -t $lang -i $file &"
			shift
		else
			sleep 1
		fi
	done
	wait
}

import_gnu() {
	echo "Gnu $1"
	if [[ ! -d $1 ]]; then
		echo "Error: missing directory '$1'"
		return
	fi
	amagama_loader $(find $1 -name "*.po" -print | sort -u)
}

import_nongnu() {
	echo "nonGnu $1"
	if [[ ! -d $1 ]]; then
		echo "Error: missing directory '$1'"
		return
	fi
	amagama_loader $(find $1 -maxdepth 1 -mindepth 1 -type d -print | sort -u)
}

import_project() {
	layout=$1
	shift
	translation_dirs=$*
	if [[ $translation_dirs ]]; then
		for translation_dir in $translation_dirs
		do
			if [[ ! -d $project_root/$translation_dir ]]; then
				echo "$project_root/$translation_dir doesn't exist!" > /dev/stderr
				continue
			fi
			if [[ $layout == "gnu" ]]; then
				import_gnu $project_root/$translation_dir
			else
				import_nongnu $project_root/$translation_dir
			fi
		done
	else
		if [[ $layout == "gnu" ]]; then
			import_gnu $project_root
		else
			import_nongnu $project_root
		fi
	fi
}

import() {
	echo $project
	if [[ ${#subproject[@]} -gt 0 ]]; then
		for index in $(seq 0 $((${#subproject[@]} - 1)))
		do
			echo "- ${subproject[index]}"
			project_root=$data_root/$project/${subproject[index]}
			import_project ${layout[index]} ${translation_dirs[index]}
		done
	elif [[ $iterator ]]; then
		for iter in $iterator
		do
			echo "- $iter"
			project_root=$data_root/$project/$iter
			import_project $layout $translation_dirs
		done
	else
		project_root=$data_root/$project
		import_project $layout $translation_dirs
	fi
}
