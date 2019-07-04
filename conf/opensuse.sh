project=opensuse

subproject[0]=yast
repo[0]=git+git://github.com/yast/yast-translations
layout[0]=gnu
translation_dirs[0]=po

subproject[1]=release-notes
repo[1]=git+git://github.com/openSUSE/release-notes-openSUSE
layout[1]=gnu
translation_dirs[1]=po

subproject[2]=desktop-file-translations
repo[2]=git+git://github.com/openSUSE/desktop-file-translations
layout[2]=nongnu

subproject[3]=packages
repo[3]=git+git://github.com/openSUSE/packages-i18n
layout[3]=nongnu

subproject[4]=libstorage-ng
repo[4]=git+git://github.com/openSUSE/libstorage-ng/
layout[4]=gnu
translation_dirs[4]=po

subproject[5]=snapper
repo[5]=git+git://github.com/openSUSE/snapper/
layout[5]=gnu
translation_dirs[5]=po

subproject[6]=scout
repo[6]=git+git://github.com/openSUSE/scout/
layout[6]=gnu
translation_dirs[6]="18n/command-not-found/ i18n/scout/"

# old
subproject[7]=kiwi
repo[7]=git+git://github.com/openSUSE/kiwi/
layout[7]=nongnu
translation_dirs[7]="locale"

subproject[8]=libzypp
repo[8]=git+git://github.com/openSUSE/libzypp/
layout[8]=gnu
translation_dirs[8]=po

subproject[9]=zypper
repo[9]=git+git://github.com/openSUSE/zypper/
layout[9]=gnu
translation_dirs[9]=po

subproject[10]=gfxboot
repo[10]=git+git://github.com/openSUSE/gfxboot/
layout[10]=gnu
translation_dirs[10]=themes/openSUSE/po/
