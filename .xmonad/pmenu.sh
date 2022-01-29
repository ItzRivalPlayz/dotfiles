
#!/bin/bash

confirm() {
    echo  "Yes\nNo" | rofi -dmenu -i -format d -selected-row 1 -p "${1:-Confirm: }"
}

suspend="Suspend"
reboot="Reboot"
shutdown="Shutdown"

content="$suspend\n$reboot\n$shutdown"

selection=$(echo  $content | rofi -dmenu -i -markup-rows -p "Action: ")
case $selection in
    $suspend)
        [[ $(confirm) = 1 ]] && (systemctl suspend -i) ;;
    $reboot)
        [[ $(confirm) = 1 ]] && (systemctl reboot -i) ;;
    $shutdown)
        [[ $(confirm) = 1 ]] && (systemctl poweroff -i) ;;
esac