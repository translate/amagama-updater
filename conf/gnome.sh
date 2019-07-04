project=gnome

iterator=$(
	curl --silent "https://gitlab.gnome.org/api/v4/projects?order_by=last_activity_at&per_page=1000"  \
	| python3 conf/gnome-projects-from-api.py  \
	| grep '/GNOME/'  \
	| sed -e 's/.*\/GNOME\///g'  \
)
repo="git+https://gitlab.gnome.org/GNOME/<iterator>"
layout=gnu
