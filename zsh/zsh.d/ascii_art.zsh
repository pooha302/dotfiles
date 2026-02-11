[[ -o interactive ]] && command -v figlet > /dev/null 2>&1 || return

local text="pooha302 / harock"
local figlet_fonts=("doom" "drpepper" "ogre" "rectangles" "shadow" "small" "smkeyboard" "slant" "smslant" "speed" "trek")
local random_font=${figlet_fonts[ $RANDOM % ${#figlet_fonts[@]} ]}
if command -v lolcat > /dev/null 2>&1; then
    figlet -f $random_font -w 200 "$text" | lolcat -f -p 1.0 -S $RANDOM
else
    figlet -f $random_font -w 200 "$text"
fi

print "\033[0;32mfiglet font >\033[1;33m $random_font \033[0m"
