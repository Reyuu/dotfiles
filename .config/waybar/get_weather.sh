#!/usr/bin/zsh

#echo "${(C)$(curl 'wttr.in/Warsaw?format=%l:+%c+%t+%m' 2> /dev/null)}"

RAW_WEATHER=$(curl -sf --max-time 5 'wttr.in/Warsaw?format=%l:+%c+%t+%m')

if [[ $? -ne 0 ]] || [[ -z "$RAW_WEATHER" ]] || [[ "$RAW_WEATHER" == *"Rate limit"* ]]; then
    echo "Warsaw: ⚠ N/A"
else
    echo "${(C)RAW_WEATHER}"
fi
