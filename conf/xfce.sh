project=xfce

iterator=$(wget -o /dev/null -O- http://git.xfce.org | grep 'sublevel-repo[^~]*$' | grep -v '/users/' | sed "s/^.*href='\([^']*\)'.*$/\1/"  | sed 's#/\(.*\)/tree/$#\1#' )
repo="git+git://git.xfce.org/<iterator>"
layout=gnu
