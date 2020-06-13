#!/usr/bin/env bash
set -euo pipefail
mac=$(virsh dumpxml ubuntu20.04-org-clone | awk -F\' '/mac address/{print $2}')
ip=$(arp | awk "/$mac/{print \$1}")
echo $ip
