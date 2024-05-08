#!/usr/bin/env sh

rofi_conf=$HOME/.config/rofi/clipboard.rasi
#// clipboard action
case "${1}" in
c | -c | --copy)
	cliphist list | rofi -dmenu -theme-str "entry { placeholder: \"Copy...\";}" -config "${rofi_conf}" | cliphist decode | wl-copy
	;;
d | -d | --delete)
	cliphist list | rofi -dmenu -theme-str "entry { placeholder: \"Delete...\";}" -config "${rofi_conf}" | cliphist delete
	;;
w | -w | --wipe)
	if [ $(echo -e "Yes\nNo" | rofi -dmenu -theme-str "entry { placeholder: \"Clear Clipboard History?\";}" -config "${rofi_conf}") == "Yes" ]; then
		cliphist wipe
	fi
	;;
*)
	echo -e "cliphist.sh [action]"
	echo "c -c --copy    :  cliphist list and copy selected"
	echo "d -d --delete  :  cliphist list and delete selected"
	echo "w -w --wipe    :  cliphist wipe database"
	exit 1
	;;
esac
