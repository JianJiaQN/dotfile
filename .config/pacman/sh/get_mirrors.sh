curl -s "https://archlinux.org/mirrorlist/?country=CN&protocol=https&ip_version=6&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 6 - > ~/dotfile/pacman/mirrorlist
