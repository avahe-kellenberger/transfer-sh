#!/usr/bin/env bash
set -e

temp_dir=$(mktemp -d)
cd "${temp_dir}"

curl -L "https://raw.githubusercontent.com/avahe-kellenberger/transfer-sh/master/tsh.sh" -o "${PWD}/tsh.sh"
curl -L "https://raw.githubusercontent.com/avahe-kellenberger/transfer-sh/master/ardour/tsh-ardour.sh" -o "${PWD}/tsh-ardour.sh"

install -Dm755 "${temp_dir}/tsh.sh" "/usr/local/bin/tsh"
install -Dm755 "${temp_dir}/tsh-ardour.sh" "/usr/local/bin/tsh-ardour"

cd "/"
trap 'rm -rf "${temp_dir}"' EXIT
echo "Done."
