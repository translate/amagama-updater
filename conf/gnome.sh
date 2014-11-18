project=gnome

iterator=$(wget -o /dev/null --no-proxy -O- http://git.gnome.org | grep 'sublevel-repo[^~]*$' | sed "s/^.*' href='\([^']*\)'.*$/\1/" | sed   's#/browse/\(.*\)/$#\1#' )
repo="git+git://git.gnome.org/<iterator>"
