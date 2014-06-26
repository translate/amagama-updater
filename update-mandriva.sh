#!/bin/bash

. `dirname $0`/common.inc.sh

mandriva_root="$data_root/mandriva"

mkdir -p $mandriva_root
cd $mandriva_root


project_root="$mandriva_root/DrakX"
SVN_URL=http://svn.mandriva.com/svn/soft/drakx/trunk/perl-install/install/share/po
update_svn

project_root="$mandriva_root/libDrakX"
SVN_URL=http://svn.mandriva.com/svn/soft/drakx/trunk/perl-install/share/po
update_svn

project_root="$mandriva_root/libDrakX-standalone"
SVN_URL=http://svn.mandriva.com/svn/soft/drakx/trunk/perl-install/standalone/po
update_svn


project_root="$mandriva_root/control-center"
SVN_URL=http://svn.mandriva.com/svn/soft/control-center/trunk/po
update_svn

project_root="$mandriva_root/doc_isos"
SVN_URL=http://svn.mandriva.com/svn/soft/doc_isos/po
update_svn

project_root="$mandriva_root/drak3d"
SVN_URL=http://svn.mandriva.com/svn/soft/drak3d/trunk/po
update_svn

project_root="$mandriva_root/drakbackup"
SVN_URL=http://svn.mandriva.com/svn/soft/drakbackup/trunk/po
update_svn

project_root="$mandriva_root/drakbt"
SVN_URL=http://svn.mandriva.com/svn/soft/drakbt/trunk/po
update_svn

project_root="$mandriva_root/drakfax"
SVN_URL=http://svn.mandriva.com/svn/soft/drakfax/trunk/po
update_svn

project_root="$mandriva_root/drakguard"
SVN_URL=http://svn.mandriva.com/svn/soft/drakguard/trunk/po
update_svn

project_root="$mandriva_root/draklive-install"
SVN_URL=http://svn.mandriva.com/svn/soft/draklive-install/trunk/po
update_svn

project_root="$mandriva_root/draklive-resize"
SVN_URL=http://svn.mandriva.com/svn/soft/draklive-resize/trunk/po
update_svn

project_root="$mandriva_root/drakmenustyle"
SVN_URL=http://svn.mandriva.com/svn/soft/drakmenustyle/trunk/po
update_svn

project_root="$mandriva_root/drakmsync"
SVN_URL=http://svn.mandriva.com/svn/soft/drakmsync/trunk/po
update_svn

project_root="$mandriva_root/drakoo"
SVN_URL=http://svn.mandriva.com/svn/soft/drakoo/trunk/po
update_svn

project_root="$mandriva_root/draksnapshot"
SVN_URL=http://svn.mandriva.com/svn/soft/draksnapshot/trunk/po
update_svn

project_root="$mandriva_root/drakstats"
SVN_URL=http://svn.mandriva.com/svn/soft/drakstats/trunk/po
update_svn

project_root="$mandriva_root/draktermserv"
SVN_URL=http://svn.mandriva.com/svn/soft/draktermserv/trunk/po
update_svn

project_root="$mandriva_root/drakvirt"
SVN_URL=http://svn.mandriva.com/svn/soft/drakvirt/trunk/po
update_svn

project_root="$mandriva_root/drakwizard"
SVN_URL=http://svn.mandriva.com/svn/soft/drakwizard/trunk/po
update_svn

project_root="$mandriva_root/drakx-kbd-mouse-x11"
SVN_URL=http://svn.mandriva.com/svn/soft/drakx-kbd-mouse-x11/trunk/po
update_svn

project_root="$mandriva_root/network-tools"
SVN_URL=http://svn.mandriva.com/svn/soft/drakx-net/trunk/po
update_svn

project_root="$mandriva_root/kcm_touchpad"
SVN_URL=http://svn.mandriva.com/svn/soft/external-l10n/trunk/kcm_touchpad/po
update_svn

project_root="$mandriva_root/drakfirstboot"
SVN_URL=http://svn.mandriva.com/svn/soft/ftw/trunk/po
update_svn

project_root="$mandriva_root/ftw-web"
SVN_URL=http://svn.mandriva.com/svn/soft/ftw-web/trunk/po
update_svn

project_root="$mandriva_root/gtkmdkwidgets"
SVN_URL=http://svn.mandriva.com/svn/soft/GtkMdkWidgets/trunk/po
update_svn

project_root="$mandriva_root/hcl"
SVN_URL=http://svn.mandriva.com/svn/soft/hcl/trunk/po
update_svn

project_root="$mandriva_root/indexhtml"
SVN_URL=http://svn.mandriva.com/svn/soft/indexhtml/trunk/about/po/
update_svn

project_root="$mandriva_root/initscripts"
SVN_URL=http://svn.mandriva.com/svn/soft/initscripts/trunk/mandriva/po
update_svn

project_root="$mandriva_root/kde4-splash-mdv"
SVN_URL=http://svn.mandriva.com/svn/soft/kde4-splash-mdv/trunk/po/
update_svn

project_root="$mandriva_root/mandriva-galaxy-data"
SVN_URL=http://svn.mandriva.com/svn/soft/mandriva-galaxy-data/trunk/po
update_svn

project_root="$mandriva_root/mandriva-galaxy-kde4"
SVN_URL=http://svn.mandriva.com/svn/soft/mandriva-galaxy-kde4/trunk/po
update_svn

project_root="$mandriva_root/mandriva-kde-translation"
SVN_URL=http://svn.mandriva.com/svn/soft/mandriva-kde-translation/trunk/po
update_svn

project_root="$mandriva_root/mdkhtmlbrowser"
SVN_URL=http://svn.mandriva.com/svn/soft/mdkhtmlbrowser/trunk/po
update_svn

project_root="$mandriva_root/mdkonline"
SVN_URL=http://svn.mandriva.com/svn/soft/mdkonline/trunk/po
update_svn

project_root="$mandriva_root/menu-contrib"
SVN_URL=http://svn.mandriva.com/svn/soft/menu-messages/trunk/contrib
update_svn

project_root="$mandriva_root/menu-main"
SVN_URL=http://svn.mandriva.com/svn/soft/menu-messages/trunk/main
update_svn

project_root="$mandriva_root/menu-non-free"
SVN_URL=http://svn.mandriva.com/svn/soft/menu-messages/trunk/non-free
update_svn

project_root="$mandriva_root/msec"
SVN_URL=http://svn.mandriva.com/svn/soft/msec/trunk/po
update_svn

project_root="$mandriva_root/nepomuk-ginkgo"
SVN_URL=http://svn.mandriva.com/svn/soft/nepomuk/ginkgo/po
update_svn

project_root="$mandriva_root/nepomuk-tasklinker"
SVN_URL=http://svn.mandriva.com/svn/soft/nepomuk/khtml_nepomuk_task_linker
update_svn

project_root="$mandriva_root/nepomuk-smartfilemodule"
SVN_URL=http://svn.mandriva.com/svn/soft/nepomuk/nepomuksmartfilemodule
update_svn

project_root="$mandriva_root/nepomuk-contextchooser"
SVN_URL=http://svn.mandriva.com/svn/soft/nepomuk/plasma_applet_nepomukcontextchooser
update_svn

project_root="$mandriva_root/nepomuk-scribo"
SVN_URL=http://svn.mandriva.com/svn/soft/nepomuk/scribo_opencalaistextmatchplugin
update_svn

project_root="$mandriva_root/nepomuk-tasktop"
SVN_URL=http://svn.mandriva.com/svn/soft/nepomuk/tasktop
update_svn

project_root="$mandriva_root/park-rpmdrake"
SVN_URL=http://svn.mandriva.com/svn/soft/park-rpmdrake/trunk/po
update_svn

project_root="$mandriva_root/printerdrake"
SVN_URL=http://svn.mandriva.com/svn/soft/printerdrake/trunk/po
update_svn

project_root="$mandriva_root/rfbdrake"
SVN_URL=http://svn.mandriva.com/svn/soft/rfbdrake/trunk/po
update_svn

project_root="$mandriva_root/rpmdrake"
SVN_URL=http://svn.mandriva.com/svn/soft/rpmdrake/trunk/po
update_svn

project_root="$mandriva_root/rpm-summary-contrib"
SVN_URL=http://svn.mandriva.com/svn/soft/rpm-summary/trunk/rpm-summary-contrib
update_svn

project_root="$mandriva_root/rpm-summary-devel"
SVN_URL=http://svn.mandriva.com/svn/soft/rpm-summary/trunk/rpm-summary-devel
update_svn

project_root="$mandriva_root/rpm-summary-main"
SVN_URL=http://svn.mandriva.com/svn/soft/rpm-summary/trunk/rpm-summary-main
update_svn

project_root="$mandriva_root/rpm-summary-non-free"
SVN_URL=http://svn.mandriva.com/svn/soft/rpm-summary/trunk/rpm-summary-non-free
update_svn

project_root="$mandriva_root/system-config-printer"
SVN_URL=http://svn.mandriva.com/svn/soft/system-config-printer/po
update_svn

project_root="$mandriva_root/urpmi"
SVN_URL=http://svn.mandriva.com/svn/soft/rpm/urpmi/trunk/po
update_svn

project_root="$mandriva_root/mandriva-gfxboot-theme"
SVN_URL=http://svn.mandriva.com/svn/soft/theme/mandriva-gfxboot-theme/trunk/po
update_svn

project_root="$mandriva_root/transfugdrake"
SVN_URL=http://svn.mandriva.com/svn/soft/transfugdrake/trunk/po
update_svn

project_root="$mandriva_root/userdrake2"
SVN_URL=http://svn.mandriva.com/svn/soft/userdrake2/trunk/po
update_svn
