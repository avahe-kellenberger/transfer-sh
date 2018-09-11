#!/usr/bin/env bash

# Removes leading and trailing whitespace.
trim() {
    local var="$*"
    var="${var#"${var%%[![:space:]]*}"}"
    var="${var%"${var##*[![:space:]]}"}"
    echo -n "$var"
}

file=$(trim "$1")
file_name="${file##*/}"
printf "%s\r\n" "$(curl --upload-file "${file}" "https://transfer.sh/${file_name}")"
