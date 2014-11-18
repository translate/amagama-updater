project=fedora

iterator=$(
for offset in `seq 0 50 400`; do
	modules=`wget --no-proxy -o /dev/null -O- 'http://git.fedorahosted.org/cgit/?s=idle&ofs='$offset | grep 'level-repo[^~]*$' | sed "s/^.*href='\([^']*\)'.*$/\1/"`
	for m in $modules; do
		echo $m | sed 's/\/cgit\/\(.*\)\/tree\/$/\1/'
	done
done
)

repo="git+git://git.fedorahosted.org/<iterator>"
