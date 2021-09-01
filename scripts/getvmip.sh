#!/usr/bin/env bash
vm=$1
set -euo pipefail
mac=$(virsh dumpxml $vm | awk -F\' '/mac address/{print $2}')
ip=$(arp | awk "/$mac/{print \$1}")
echo $ip
