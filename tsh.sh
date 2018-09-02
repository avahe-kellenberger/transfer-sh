#!/usr/bin/env bash

file="${1}"
file_name="${file##*/}"
printf "%s\r\n" "$(curl --upload-file "${file}" "https://transfer.sh/${file_name}")"
