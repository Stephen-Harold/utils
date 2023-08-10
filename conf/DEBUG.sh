#!/usr/local/bin/bash
declare -fgx DEBUG; # function, global visibility and exported
declare -fgx dbg;
declare -gx dmsg="null";

function DEBUG() {
    local scriptName=$1;
    local message=$2;
    local state=${3:-0};
    if [[ ${dUTILS_DEBUG} = "On" ]] || [[ ${state} = 1 ]]
    then
        printf \
            "${WHITE}DEBUG| %-16s ${WHITE}|| %-32s ${WHITE}||| %-120s ${WHITE}||||${RESET}\n" \
            "${RED}$(date +%H:%M:%S)" \
            "${YELLOW}${scriptName:-"Not Set!"}" \
            "${GREEN}${message:-"Message Variable Not Set"}";
    fi
}

# shellcheck disable=SC2050
function dbg() {
    local script=$1;
    local msg=$2;
    local state=${3:-0};
    if [[ $(type DEBUG) =~ 'function' ]]
    then
        DEBUG "${script}" "${msg}";
    else
        [[ ${dUTILS_DEBUG} = 1 ]] && printf "%-24s%-80s\n" "${script}" "${msg}"
    fi
}
