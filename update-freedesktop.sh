#!/bin/bash

. `dirname $0`/helpers

GIT_URL=git://anongit.freedesktop.org/accountsservice
project_root="$data_root/freedesktop/accountservice"
update_git
GIT_URL=git://anongit.freedesktop.org/NetworkManager/NetworkManager
project_root="$data_root/freedesktop/NetworkManager"
update_git
GIT_URL=git://anongit.freedesktop.org/pulseaudio/pulseaudio
project_root="$data_root/freedesktop/pulseaudio"
update_git
GIT_URL=git://anongit.freedesktop.org/packagekit
project_root="$data_root/freedesktop/packagekit"
update_git
GIT_URL=git://anongit.freedesktop.org/libfprint/fprintd
project_root="$data_root/freedesktop/fprintd"
update_git
GIT_URL=git://anongit.freedesktop.org/gstreamer/gstreamer
project_root="$data_root/freedesktop/gstreamer/gstreamer"
update_git
GIT_URL=git://anongit.freedesktop.org/gstreamer/gst-plugins-base
project_root="$data_root/freedesktop/gstreamer/gst-plugins-base"
update_git
GIT_URL=git://anongit.freedesktop.org/gstreamer/gst-plugins-good
project_root="$data_root/freedesktop/gstreamer/gst-plugins-good"
update_git
GIT_URL=git://anongit.freedesktop.org/gstreamer/gst-plugins-bad
project_root="$data_root/freedesktop/gstreamer/gst-plugins-bad"
update_git
GIT_URL=git://anongit.freedesktop.org/gstreamer/gst-plugins-ugly
project_root="$data_root/freedesktop/gstreamer/gst-plugins-ugly"
update_git
GIT_URL=git://anongit.freedesktop.org/xdg/shared-mime-info
project_root="$data_root/freedesktop/shared-mime-info"
update_git
GIT_URL=git://anongit.freedesktop.org/xdg/xdg-user-dirs
project_root="$data_root/freedesktop/xdg-user-dirs"
update_git
GIT_URL=git://anongit.freedesktop.org/xkeyboard-config
project_root="$data_root/freedesktop/xkeyboard-config"
update_git
GIT_URL=git://anongit.freedesktop.org/udisks
project_root="$data_root/freedesktop/udisks"
update_git
