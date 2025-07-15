#!/bin/bash

set -x
for i in /tmp/userscripts/*.sh; do
"$i"
done
