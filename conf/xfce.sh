project=xfce

iterator=$(wget -o /dev/null --no-proxy -O- http://git.xfce.org | grep 'sublevel-repo[^~]*$' | sed "s/^.*href='\([^']*\)'.*$/\1/"  | sed 's#/\(.*\)/tree/$#\1#' )
repo="git+git://git.xfce.org/<iterator>"
