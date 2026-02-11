[[ -o interactive ]] && command -v figlet > /dev/null 2>&1 || return

local text="pooha302 / harock"
if command -v lolcat > /dev/null 2>&1; then
    figlet -w 200 "$text" | lolcat -f -p 1.0 -S $RANDOM
else
    figlet -w 200 "$text"
fi
