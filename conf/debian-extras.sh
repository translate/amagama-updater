project=debian-extras

subproject[0]=dpkg
repo[0]=git+https://salsa.debian.org/dpkg-team/dpkg.git
layout[0]=gnu
translation_dirs[0]="po man/po scripts/po dselect/po"

subproject[1]=aptitude
repo[1]=git+https://salsa.debian.org/apt-team/aptitude.git
layout[1]=gnu
translation_dirs[1]="po doc/po4a/po"

subproject[2]=apt
repo[2]=git+https://salsa.debian.org/apt-team/apt.git
layout[2]=gnu
translation_dirs[2]="po doc/po"

subproject[3]=di
repo[3]=git+https://salsa.debian.org/installer-team/d-i.git
layout[3]=gnu
translation_dirs[3]=packages/po

subproject[4]=installation-guide
repo[4]=git+https://salsa.debian.org/installer-team/installation-guide.git
layout[4]=nongnu
translation_dirs[4]=po


#subproject[2]=manpages-fr-extra
#repo[2]=git+git://git.debian.org/git/pkg-manpages-fr/manpages-fr-extra.git
#layout[2]=gnu
#
#subproject[3]=manpages-fr
#repo[3]=git+git://git.debian.org/git/pkg-manpages-fr/manpages-fr.git
#layout[3]=gnu
#
#subproject[4]=manpages-de
#repo[4]=git+git://git.debian.org/git/manpages-de/manpages-de.git
#layout[4]=gnu

