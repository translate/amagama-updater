#!/bin/bash

. `dirname $0`/common.inc.sh

project_root="$data_root/freedesktop/accountservice"
GIT_URL=git://anongit.freedesktop.org/accountsservice
update_git

project_root="$data_root/freedesktop/NetworkManager"
GIT_URL=git://anongit.freedesktop.org/NetworkManager/NetworkManager
update_git

project_root="$data_root/freedesktop/pulseaudio"
GIT_URL=git://anongit.freedesktop.org/pulseaudio/pulseaudio
update_git

project_root="$data_root/freedesktop/packagekit"
GIT_URL=git://anongit.freedesktop.org/packagekit
update_git

project_root="$data_root/freedesktop/fprintd"
GIT_URL=git://anongit.freedesktop.org/libfprint/fprintd
update_git

project_root="$data_root/freedesktop/gstreamer/gstreamer"
GIT_URL=git://anongit.freedesktop.org/gstreamer/gstreamer
update_git

project_root="$data_root/freedesktop/gstreamer/gst-plugins-base"
GIT_URL=git://anongit.freedesktop.org/gstreamer/gst-plugins-base
update_git

project_root="$data_root/freedesktop/gstreamer/gst-plugins-good"
GIT_URL=git://anongit.freedesktop.org/gstreamer/gst-plugins-good
update_git

project_root="$data_root/freedesktop/gstreamer/gst-plugins-bad"
GIT_URL=git://anongit.freedesktop.org/gstreamer/gst-plugins-bad
update_git

project_root="$data_root/freedesktop/gstreamer/gst-plugins-ugly"
GIT_URL=git://anongit.freedesktop.org/gstreamer/gst-plugins-ugly
update_git

project_root="$data_root/freedesktop/shared-mime-info"
GIT_URL=git://anongit.freedesktop.org/xdg/shared-mime-info
update_git

project_root="$data_root/freedesktop/xdg-user-dirs"
GIT_URL=git://anongit.freedesktop.org/xdg/xdg-user-dirs
update_git

project_root="$data_root/freedesktop/xkeyboard-config"
GIT_URL=git://anongit.freedesktop.org/xkeyboard-config
update_git

project_root="$data_root/freedesktop/udisks"
GIT_URL=git://anongit.freedesktop.org/udisks
update_git
