#!/bin/sh
. $(dirname $0)/path.sh

VM="$*"
test -z "$VM" && VM="madev10-amd64 madev10-i386 ubuntu20-amd64 ubuntu18-amd64"
for v in $VM; do
  cd $HOME/vagrant/$v
  vagrant ssh -c "sh development/ma-${PACKAGE}/setup.sh"
  vagrant ssh -c "sh development/ma-${PACKAGE}/build.sh"
done
