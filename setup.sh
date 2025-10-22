#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

script_dir="$(CDPATH='' cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
readonly script_dir

readonly certfile="$script_dir/server_localhost_certificate.pem"
readonly keyfile="$script_dir/server_localhost_key.pem"

sed -e "s#@CERTFILE@#$certfile#" -e "s#@KEYFILE@#$keyfile#" "$script_dir/advanced.config.in" > "$script_dir/advanced.config"
