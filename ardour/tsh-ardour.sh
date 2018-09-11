#!/usr/bin/env bash
set -e

full_path=""
for i
do
    full_path="$full_path"" ""$i"
done

output="$(printf "%s\n" "$(tsh "$full_path")")"

xdg-open "$output"
